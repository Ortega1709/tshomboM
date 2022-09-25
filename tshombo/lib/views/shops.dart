import 'package:flutter/material.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/widgets/topBar.dart';

class Shops extends StatefulWidget {
  const Shops({super.key});

  @override
  State<Shops> createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {

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
              TopBar(title: "Shops", currentUser: "Kabwe Mulunda",)
            ],
          ),
        )
      )
    );
  }
}