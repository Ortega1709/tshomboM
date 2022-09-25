import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/typographie.dart';
import 'package:tshombo/widgets/carousselPromotion.dart';
import 'package:tshombo/widgets/topBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Couleur().white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopBar(title: "Accueil", currentUser: "Kabwe Mulunda",),
            ],
          ),
        ),
      )
    );
  }
}

