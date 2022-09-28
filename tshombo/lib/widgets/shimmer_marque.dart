import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/typographie.dart';

class ShimmerMarque extends StatefulWidget {
  const ShimmerMarque({super.key});

  @override
  State<ShimmerMarque> createState() => _ShimmerMarqueState();
}

class _ShimmerMarqueState extends State<ShimmerMarque> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 10; i++) 
        Shimmer.fromColors(
          baseColor: Colors.grey[400]!,
          highlightColor: Colors.grey[300]!,
          child: marques()
        ),
      ],
    );
  }
}

Widget marques() {
  return GestureDetector(
    onTap: () {
      
    },
    child: Padding(
      padding: const EdgeInsets.all(1.2),
      child: Chip(
        backgroundColor: Colors.grey[400]!,
        label: Text(
          "Samsung",
          style: h1(null, FontWeight.normal, Couleur().blue)
        ),
      ),
    ),
  );
}