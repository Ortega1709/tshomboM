import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/utils/couleurs.dart';

class Commandes extends StatefulWidget {
  const Commandes({super.key});

  @override
  State<Commandes> createState() => _CommandesState();
}

class _CommandesState extends State<Commandes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ghost,
      body: Center(
        child: Text(
          "Commandes",
          style: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}