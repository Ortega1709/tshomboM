// ignore: file_names
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tshombo/models/dataImage.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/utils/typographie.dart';


// ignore: must_be_immutable
class Caroussel extends StatefulWidget {

  final List<DataImage> promotion;

  const Caroussel({super.key, required this.promotion});

  @override
  State<Caroussel> createState() => _CarousselState();
}

class _CarousselState extends State<Caroussel> {

  int current = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> promotions = widget.promotion.map((item) => CachedNetworkImage(
      imageUrl: item.url,
      imageBuilder: (context, imageProvider) => Container(
        width: double.infinity,
        height: Dimension(context).height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(212, 3, 34, 76),
                Color.fromARGB(0, 3, 33, 76)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            )
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.store, color: Colors.white,),
              const SizedBox(width: 5,),
              Text(
                item.shop,
                style: h1(16, FontWeight.bold, Colors.white),
              ),
            ],
          )
        )
      ),
      placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
      errorWidget: (context, url, error) => Center(child: Icon(Icons.error, color: Couleur().blue,),),
    ),
    ).toList();

    return Column(
      children: [
        CarouselSlider(
          items: promotions, 
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: ((index, reason) {
              setState(() {
                current = index;
              });
            })
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.promotion.map((item) {
            int index = widget.promotion.indexOf(item);
            return Container(
              width: 9,
              height: 9,
              margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: current == index ? const Color.fromRGBO(3, 34, 76, 0.9) : const Color.fromRGBO(3, 34, 76, 0.2)
              )
            );
          }).toList()
        )
      ]
    );
  }
}

