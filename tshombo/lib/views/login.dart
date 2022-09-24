import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/couleurs.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ghost,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                header(context),
                form(context),
                footers(context)
              ],
            ),
          ),
        ),
      )
    );
  }
}

// header ()
Widget header(BuildContext context) => Row(

);


// formulaire
Widget form(BuildContext context) => Row(

);


// bottom action (create an account and forgot password)
Widget footers(BuildContext context) => Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      children: [
        GestureDetector(
          onTap: () {
            
          },
          child: Text(
            "Mot de passe oublié ?",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              color: grey1,
            ),
          ),
        )
      ],
    ),
    Column(
      children: [
        GestureDetector(
          onTap: () {
            
          },
          child: Text(
            "Créer un compte",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              color: grey1
            ),
          ),
        )
      ],
    )
  ],
);