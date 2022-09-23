import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tshombo/utils/couleurs.dart';

import '../widgets/topBar.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  
  @override
  void initState() {
    super.initState();
    print("Panier");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ghost,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopBar(title: "Mon Panier")
            ],
          ),
        ),
      ),
    );
  }
}
