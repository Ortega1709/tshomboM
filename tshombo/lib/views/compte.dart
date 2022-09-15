import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Compte extends StatefulWidget {
  const Compte({super.key});

  @override
  State<Compte> createState() => _CompteState();
}

class _CompteState extends State<Compte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Compte",
          style: GoogleFonts.inter(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Compte",
          style: GoogleFonts.inter(),
        ),
      ),
    );
  }
}