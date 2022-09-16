import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/widgets/topBar.dart';

class Compte extends StatefulWidget {
  const Compte({super.key});

  @override
  State<Compte> createState() => _CompteState();
}

class _CompteState extends State<Compte> {
  
  @override
  void initState() {
    super.initState();
    print("Compte");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ghost,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopBar(title: "Mon compte")
            ],
          ),
        )
      )
    );
  }
}