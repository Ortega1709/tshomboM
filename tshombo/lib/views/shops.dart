import 'package:flutter/material.dart';
import 'package:tshombo/models/data_image.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/widgets/caroussel.dart';

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


    List<DataImage> promotions = [];
    promotions.add(DataImage(url: "https://images.unsplash.com/photo-1594969155368-f19485a9d88c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80", shop: "Mupendwa"));
    promotions.add(DataImage(url: "https://images.unsplash.com/photo-1491951931722-5a446214b4e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHByb21vdGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", shop: "Ortega"));
    promotions.add(DataImage(url: "https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80", shop: "Guedalia"));
    promotions.add(DataImage(url: "https://images.unsplash.com/photo-1663386170868-680631b3a10a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80", shop: "John Wizer"));

    return Scaffold(
      backgroundColor: Couleur().white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
            ],
          ),
        )
      )
    );
  }
}