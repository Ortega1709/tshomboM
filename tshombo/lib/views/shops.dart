import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/utils/couleurs.dart';

class Shops extends StatefulWidget {
  const Shops({super.key});

  @override
  State<Shops> createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ghost,
      body: Center(
        child: Text(
          "Shops",
          style: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}