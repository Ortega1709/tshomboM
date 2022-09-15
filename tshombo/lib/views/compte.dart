import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/utils/couleurs.dart';

class Compte extends StatefulWidget {
  const Compte({super.key});

  @override
  State<Compte> createState() => _CompteState();
}

class _CompteState extends State<Compte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ghost,
      body: Center(
        child: Text(
          "Mon compte",
          style: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}