import 'package:flutter/material.dart';
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
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Couleur().white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopBar(title: "Mon compte", currentUser: "Kabwe Mulunda",)
            ],
          ),
        )
      )
    );
  }
}