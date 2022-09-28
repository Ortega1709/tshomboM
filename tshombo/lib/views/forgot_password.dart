import 'package:flutter/material.dart';
import 'package:tshombo/api/email_api.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/typographie.dart';
import 'package:tshombo/utils/message.dart';
import '../utils/generate_code.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  bool isLoading = false;

  final formKey = GlobalKey<FormState>();
  var textEditingControllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("lib/images/lineup.png"),
            Padding(
              padding: EdgeInsets.all(width * 0.060),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Text(
                      "Mot de passe oublié ?",
                      style: h1(height * 0.025 , FontWeight.bold, Couleur().blue)
                    ),
                    SizedBox(height: height * 0.001,),
                    Text(
                      "Veuillez insérer votre adresse email, nous vous enverrons un code pour la modification du mot de passe.",
                      style: h1(height * 0.018 , FontWeight.normal, Couleur().blue)
                    ),
                    SizedBox(height: height * 0.030,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: h1(height * 0.018, FontWeight.normal, Couleur().blue),
                        suffixIcon: Icon(Icons.email, color: Couleur().blue,),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Couleur().blue,
                            width: 1.5
                          ),
                        ),
                      ),
                      cursorColor: Couleur().blue,
                      controller: textEditingControllerEmail,
                      keyboardType: TextInputType.text,
                      style: h1(null, FontWeight.normal, Couleur().blue),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez remplir ce champ";
                        }
                        else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                          return "Veuillez entrer une adresse correct";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * 0.030,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Se connecter",
                            style: h1(height * 0.018 , FontWeight.bold, Couleur().blue)
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {

                              if (isLoading) return;

                              setState(() { isLoading = true; });

                              if (await EmailApi().sendEmail(
                                  email: textEditingControllerEmail.text.trim().toString().toLowerCase(),
                                  subject: "Modification du mot de passe oublié",
                                  message: "Voici le code: ${randomCodeEmail(10000,5100).toString()}",
                                  context: context
                                )
                              ) {

                                setState(() { isLoading = false; });
                                Message(context, "Nous vous avons envoyé un mail");

                              } else {

                                setState(() { isLoading = false; });
                                Message(context, "Erreur d'envoie du mail");
                              }
                            } else {
                              return;
                            }
                          },
                          backgroundColor: Couleur().blue,
                          tooltip: "Connexion",
                          child: isLoading ? CircularProgressIndicator(color: Couleur().white,) : const Icon(Icons.east_rounded, color: Colors.white,) ,
                        )
                      ],
                    ),
                    SizedBox(height: height * 0.040,),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}