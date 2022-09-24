import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:http/http.dart' as http;
import 'package:tshombo/utils/typographie.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final formKey = GlobalKey<FormState>();
  var textEditingControllerEmail = TextEditingController();


  // fonction send Email
  Future sendEmail({
    required String email,
    String subject = "Modification du mot de passe",
    String message = "Voici le code: 787898"
  }) async {

    const serviceId = 'service_kpxs4mf';
    const templateId = 'template_n8ooitp';
    const userId = 'bUIWjPAjgs5DsP6FH';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http
    .post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode(
        {
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_email': email,
          'user_subject': subject,
          'user_message': message
        }
      },
      )
    );

    if (response.body == "OK") {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger
      .of(context)
      .showSnackBar(SnackBar(content: Text("Email a été envoyé, verifiez votre boite !", style: h1(17, FontWeight.bold, Colors.white)), backgroundColor: grey1,));
    }
  }

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
                      style: h1(height * 0.025 , FontWeight.bold, grey1)
                    ),
                    SizedBox(height: height * 0.001,),
                    Text(
                      "Veuillez insérer votre adresse email, nous vous enverrons un lien de modification du mot de passe.",
                      style: h1(height * 0.018 , FontWeight.normal, grey1)
                    ),
                    SizedBox(height: height * 0.030,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: h1(height * 0.018, FontWeight.normal, grey1),
                        suffixIcon: const Icon(Icons.email, color: grey1,),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: grey1,
                            width: 1.5
                          ),
                        ),
                      ),
                      cursorColor: grey1,
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
                      },
                    ),
                    SizedBox(height: height * 0.030,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (formKey.currentState!.validate()) {

                            }
                          },
                          child: Text(
                            "Renvoyer le mail",
                            style: h1(height * 0.018 , FontWeight.bold, grey1)
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              sendEmail(email: textEditingControllerEmail.text.toString().trim().toLowerCase());
                            } else {
                              return;
                            }
                          },
                          backgroundColor: grey1,
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