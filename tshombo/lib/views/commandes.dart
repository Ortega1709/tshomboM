import 'package:flutter/material.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/widgets/topBar.dart';

class Commandes extends StatefulWidget {
  const Commandes({super.key});

  @override
  State<Commandes> createState() => _CommandesState();
}

class _CommandesState extends State<Commandes> {


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
              TopBar(title: "Commandes", currentUser: "Kabwe Mulunda",)
            ],
          ),
        )
      )
    );
  }
}