import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPhone extends StatefulWidget {
  const ShimmerPhone({super.key});

  @override
  State<ShimmerPhone> createState() => _ShimmerPhoneState();
}

class _ShimmerPhoneState extends State<ShimmerPhone> {
  @override
  Widget build(BuildContext context) {

    double width = 200.0;
    double height = 300.0;

    return Row(
      children: [
        for (var i = 0; i < 10; i++)
          phone(width, height)
      ]
    );
  }
}

Widget phone(double width, double height) {
  return Shimmer.fromColors(
    baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[300]!,
    child: Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey
              ),
            ),

            const SizedBox(height: 7.0),
            Container(
              width: width - 25, 
              height: 12.0, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 6.0),
            Container(
              width: width - 65, 
              height: 12.0, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 6.0),
            Container(
              width: width - 95, 
              height: 12.0, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 6.0),
            Container(
              width: width - 55, 
              height: 12.0, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 6.0),
            Container(
              width: width - 75, 
              height: 12.0, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}