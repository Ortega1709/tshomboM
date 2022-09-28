import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/models/dataImage.dart';
import 'package:tshombo/models/dataMarque.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/utils/typographie.dart';
import 'package:tshombo/widgets/caroussel.dart';
import 'package:tshombo/widgets/listViewMarque.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {

    List<DataImage> promotions = [];
    List<DataMarque> marques = [];

    // data marques
    marques.add(DataMarque(nom: "Samsung"));
    marques.add(DataMarque(nom: "Itel"));
    marques.add(DataMarque(nom: "Xiaomi"));
    marques.add(DataMarque(nom: "Nokia"));
    marques.add(DataMarque(nom: "Oppo"));
    marques.add(DataMarque(nom: "Google"));
    marques.add(DataMarque(nom: "Iphone"));
    marques.add(DataMarque(nom: "Huawei"));

    // data image 
    promotions.add(DataImage(url: "https://images.unsplash.com/photo-1594969155368-f19485a9d88c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80", shop: "Mupendwa"));
    promotions.add(DataImage(url: "https://images.unsplash.com/photo-1594969155368-f19485a9d88c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80", shop: "Mupendwa"));
    promotions.add(DataImage(url: "https://images.unsplash.com/photo-1594969155368-f19485a9d88c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80", shop: "Mupendwa"));

    return Scaffold(
      backgroundColor: Couleur().white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Caroussel(promotion: promotions),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Marques",
                      style: h1(Dimension(context).height * 0.022, FontWeight.bold, Couleur().blue),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ListViewMarque(listMarque: marques,),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nouveautés",
                      style: h1(17, FontWeight.bold, Couleur().blue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

