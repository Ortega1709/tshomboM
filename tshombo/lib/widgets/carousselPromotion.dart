// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';


class CarousselPromotion extends StatefulWidget {

  final String shop;
  final String image;

  const CarousselPromotion({super.key, required this.shop, required this.image});

  @override
  State<CarousselPromotion> createState() => _CarousselPromotionState();
}

class _CarousselPromotionState extends State<CarousselPromotion> {
  @override
  Widget build(BuildContext context) {

    var dimension = Dimension(context);

    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        width: double.infinity,
        height: dimension.height * 0.4,
        decoration: BoxDecoration(
          color: Couleur().black,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}