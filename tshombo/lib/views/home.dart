import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/models/data_image.dart';
import 'package:tshombo/models/data_marque.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/utils/typographie.dart';
import 'package:tshombo/widgets/caroussel.dart';
import 'package:tshombo/widgets/list_view_marque.dart';
import 'package:tshombo/widgets/shimmer_caroussel.dart';

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
    promotions.add(DataImage(url: "https://images.frandroid.com/wp-content/uploads/2022/01/top-10-smartphones-soldes-hiver-2022.jpg", shop: "Ciel ouverts"));
    promotions.add(DataImage(url: "https://www.lesmobiles.com/img/actus/Soldes-smartphones-les-t-l-phones-Samsung-en-promotion-1650369868-large.jpg", shop: "Mopao"));
    promotions.add(DataImage(url: "https://www.edcom.fr/img/actus/Promo-smartphone-boulanger-ou-cdiscount-1593761172-large.jpg", shop: "Banini"));
    promotions.add(DataImage(url: "https://www.01net.com/app/uploads/2020/11/realme-X50-5G-1.jpg", shop: "Mupendwa"));
    promotions.add(DataImage(url: "https://pbs.twimg.com/media/EWmxmeWXsAAo3nN.jpg", shop: "Yemska la base"));

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
                const Divider(height: 0.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ListViewMarque(listMarque: marques,),
                    )
                  ],
                ),
                const Divider(height: 3.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nouveautés",
                      style: h1(Dimension(context).height * 0.020, FontWeight.bold, Couleur().blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

