import 'package:flutter/material.dart';
import 'package:tshombo/api/email_api.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/typographie.dart';
import '../utils/generateCode.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

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
            Image.asset("lib/images/lineup.png", ),
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
                            color: Couleur().white,
                            width: 1.5
                          ),
                        ),
                      ),
                      cursorColor: Couleur().blue,
                      controller: textEditingControllerEmail,
                      keyboardType: TextInputType.text,
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
                        GestureDetector(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              EmailApi().sendEmail(
                                email: textEditingControllerEmail.text.trim().toString().toLowerCase(),
                                subject: "Modification du mot de passe oublié",
                                message: "Voici le code: ${randomCodeEmail(10000,5100).toString()}",
                                context: context
                              );
                            }
                          },
                          child: Text(
                            "Renvoyer le mail",
                            style: h1(height * 0.018 , FontWeight.bold, Couleur().blue)
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              EmailApi().sendEmail(
                                email: textEditingControllerEmail.text.trim().toString().toLowerCase(),
                                subject: "Modification du mot de passe oublié",
                                message: "Voici le code: ${randomCodeEmail(10000,5100).toString()}",
                                context: context
                              );
                            } else {
                              return;
                            }
                          },
                          backgroundColor: Couleur().white,
                          tooltip: "Connexion",
                          child: const Icon(Icons.arrow_forward_rounded, color: Colors.white,),
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