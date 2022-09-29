import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';

class ShimmerCaroussel extends StatefulWidget {
  const ShimmerCaroussel({super.key});

  @override
  State<ShimmerCaroussel> createState() => _ShimmerCarousselState();
}

class _ShimmerCarousselState extends State<ShimmerCaroussel> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]! ,
      highlightColor: Colors.grey[300]!,
      child: Column(
        children: [
          Container(
            width: Dimension(context).width,
            height: Dimension(context).height * 0.295,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8.0)
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 19.5,
                height: 7.5,
                margin: EdgeInsets.symmetric(horizontal: Dimension(context).width * 0.007, vertical: 7),
                decoration: BoxDecoration(
                  color: Couleur().blue,
                  borderRadius: BorderRadius.circular(15)
                )
              ),

              Container(
                width: 7.5,
                height: 7.5,
                margin: EdgeInsets.symmetric(horizontal: Dimension(context).width * 0.007, vertical: 7),
                decoration: BoxDecoration(
                  color: Couleur().blue,
                  borderRadius: BorderRadius.circular(15)
                )
              ),

              Container(
                width: 7.5,
                height: 7.5,
                margin: EdgeInsets.symmetric(horizontal: Dimension(context).width * 0.007, vertical: 7),
                decoration: BoxDecoration(
                  color: Couleur().blue,
                  borderRadius: BorderRadius.circular(15)
                )
              ),

              Container(
                width: 7.5,
                height: 7.5,
                margin: EdgeInsets.symmetric(horizontal: Dimension(context).width * 0.007, vertical: 7),
                decoration: BoxDecoration(
                  color: Couleur().blue,
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}