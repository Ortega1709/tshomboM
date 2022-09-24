import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/utils/typographie.dart';
import '../utils/couleurs.dart';

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

  void enregistrement() {

    if (
      textEditingControllerUsername.text.isNotEmpty && 
      textEditingControllerNom.text.isNotEmpty && 
      textEditingControllerPostNom.text.isNotEmpty &&
      textEditingControllerEmail.text.isNotEmpty &&
      textEditingControllerPassword.text.isNotEmpty) {


      } else {
        ScaffoldMessenger
        .of(context)
        .showSnackBar(
          SnackBar(
            content: Text("Tous les champs sont réquis", style: GoogleFonts.alegreyaSans(color: Colors.white, fontSize: 15),),
            backgroundColor: grey1,
          )
        );
      }
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ghost,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(width * 0.060),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Bienvenue !",
                      style: h1(height * 0.039, FontWeight.bold, grey1)
                    ),
                    SizedBox(height: height * 0.001,),
                    Text(
                      "Création du compte",
                      style: h1(height * 0.029, FontWeight.bold, grey1)
                    ),
                    SizedBox(height: height * 0.03,),
                    TextFormField(
                        decoration: InputDecoration(
                          labelText: "Nom d'utilisateur",
                          labelStyle: h1(height * 0.018, FontWeight.normal, grey1),
                          suffixIcon: const Icon(Icons.person, color: grey1,),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: grey1,
                              width: 1.5
                            ),
                          ),
                        ),
                        cursorColor: grey1,
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
                        },
                    ),
                    SizedBox(height: height * 0.02,),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              decoration: InputDecoration(
                              labelText: "Nom",
                              labelStyle: h1(height * 0.018, FontWeight.normal, grey1),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: grey1,
                                  width: 1.5
                                ),
                              ),
                            ),
                            cursorColor: grey1,
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
                        SizedBox(width: width * 0.03,),
                        Expanded(
                          child: TextFormField(
                              decoration: InputDecoration(
                              labelText: "Post - Nom",
                              labelStyle: h1(height * 0.018, FontWeight.normal, grey1),
                              suffixIcon: const Icon(Icons.badge, color: grey1,),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: grey1,
                                  width: 1.5
                                ),
                              ),
                            ),
                            cursorColor: grey1,
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
                    SizedBox(height: height * 0.020,),
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
                    SizedBox(height: height * 0.020,),
                    TextFormField(
                        decoration: InputDecoration(
                          labelText: "Mot de passe",
                          labelStyle: h1(height * 0.018, FontWeight.normal, grey1),
                          suffixIcon: const Icon(Icons.lock, color: grey1,),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: grey1,
                              width: 1.5
                            ),
                          ),
                        ),
                        cursorColor: grey1,
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
                        },
                    ),
                    SizedBox(height: height * 0.030,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Se connecter",
                            style: h1(height * 0.018, FontWeight.bold, grey1)
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {

                            } 
                          },
                          backgroundColor: grey1,
                          tooltip: "Créer",
                          child: const Icon(Icons.arrow_forward_rounded, color: Colors.white,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}

