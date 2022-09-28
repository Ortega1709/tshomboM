import 'package:flutter/material.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/utils/typographie.dart';
import 'package:tshombo/utils/couleurs.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();

  var textEditingControllerUsername = TextEditingController();
  var textEditingControllerNom = TextEditingController();
  var textEditingControllerPostNom = TextEditingController();
  var textEditingControllerEmail = TextEditingController();
  var textEditingControllerPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {

    var dimension = Dimension(context);

    return Scaffold(
      backgroundColor: Couleur().white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("lib/images/lineup.png"),
            Padding(
              padding: EdgeInsets.all(dimension.width * 0.060),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Bienvenue !",
                      style: h1(dimension.height * 0.037, FontWeight.bold, Couleur().blue)
                    ),
                    SizedBox(height: dimension.height * 0.001,),
                    Text(
                      "Création du compte",
                      style: h1(dimension.height * 0.027, FontWeight.bold, Couleur().blue)
                    ),
                    SizedBox(height: dimension.height * 0.03,),
                    TextFormField(
                        style: h1(null, FontWeight.normal, Couleur().blue),
                        decoration: InputDecoration(
                          labelText: "Nom d'utilisateur",
                          labelStyle: h1(dimension.height * 0.018, FontWeight.normal, Couleur().blue),
                          suffixIcon: Icon(Icons.person, color: Couleur().blue,),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Couleur().blue,
                              width: 1.5
                            ),
                          ),
                        ),
                        cursorColor: Couleur().blue,
                        controller: textEditingControllerUsername,
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Veuillez remplir ce champ";
                          }
                          else if (!RegExp(r"^[a-z A-Z]+$").hasMatch(value)) {
                            return "Veuillez entrer un nom correct";
                          }
                          return null;
                        },
                    ),
                    SizedBox(height: dimension.height * 0.02,),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              style: h1(null, FontWeight.normal, Couleur().blue),
                              decoration: InputDecoration(
                              labelText: "Nom",
                              labelStyle: h1(dimension.height * 0.018, FontWeight.normal, Couleur().blue),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Couleur().blue,
                                  width: 1.5
                                ),
                              ),
                            ),
                            cursorColor: Couleur().blue,
                            controller: textEditingControllerNom,
                            keyboardType: TextInputType.text,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Veuillez remplir ce champ";
                              }
                              else if (!RegExp(r"^[a-z A-Z]+$").hasMatch(value)) {
                                return "Veuillez entrer un nom correct";
                              }
                            },
                          ),
                        ),
                        SizedBox(width: dimension.width * 0.03,),
                        Expanded(
                          child: TextFormField(
                              style: h1(null, FontWeight.normal, Couleur().blue),
                              decoration: InputDecoration(
                              labelText: "Post - Nom",
                              labelStyle: h1(dimension.height * 0.018, FontWeight.normal, Couleur().blue),
                              suffixIcon: Icon(Icons.badge, color: Couleur().blue,),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Couleur().blue,
                                  width: 1.5
                                ),
                              ),
                            ),
                            cursorColor: Couleur().blue,
                            controller: textEditingControllerPostNom,
                            keyboardType: TextInputType.text,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Veuillez remplir ce champ";
                              }
                              else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                                return "Veuillez entrer une adresse correct";
                              }
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: dimension.height * 0.020,),
                    TextFormField(
                        style: h1(null, FontWeight.normal, Couleur().blue),
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: h1(dimension.height * 0.018, FontWeight.normal, Couleur().blue),
                          suffixIcon: Icon(Icons.email, color: Couleur().blue),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Couleur().blue,
                              width: 1.5
                            ),
                          ),
                        ),
                        cursorColor: Couleur().blue,
                        controller: textEditingControllerEmail,
                        keyboardType: TextInputType.emailAddress,
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
                    SizedBox(height: dimension.height * 0.020,),
                    TextFormField(
                        style: h1(null, FontWeight.normal, Couleur().blue),
                        decoration: InputDecoration(
                          labelText: "Mot de passe",
                          labelStyle: h1(dimension.height * 0.018, FontWeight.normal, Couleur().blue),
                          suffixIcon: Icon(Icons.lock, color: Couleur().blue),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Couleur().blue,
                              width: 1.5
                            ),
                          ),
                        ),
                        cursorColor: Couleur().blue,
                        controller: textEditingControllerPassword,
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Veuillez remplir ce champ";
                          }
                          else if (!RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$").hasMatch(value)) {
                            return "Veuillez entrer un mot de passe correct";
                          }
                          return null;
                        },
                    ),
                    SizedBox(height: dimension.height * 0.030,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Se connecter",
                            style: h1(dimension.height * 0.018, FontWeight.bold, Couleur().blue)
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {

                            } 
                          },
                          backgroundColor: Couleur().blue,
                          tooltip: "Créer",
                          child: const Icon(Icons.arrow_forward_rounded, color: Colors.white,),
                        )
                      ],
                    ),
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

