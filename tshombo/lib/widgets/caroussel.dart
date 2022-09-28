// ignore: file_names
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tshombo/models/data_image.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/utils/typographie.dart';
import 'package:tshombo/widgets/shimmer_caroussel.dart';


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

    List<Widget> promotions = widget.promotion.map((item) => 
    CachedNetworkImage(
      imageUrl: item.url,
      imageBuilder: (context, imageProvider) => Container(
        width: double.infinity,
        height: Dimension(context).height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(210, 3, 34, 76),
                Color.fromARGB(0, 3, 33, 76)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            )
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.store_rounded, color: Colors.white, size: 20,),
              const SizedBox(width: 5,),
              Text(
                item.shop,
                style: h1(Dimension(context).height * 0.019, FontWeight.bold, Colors.white),
              ),
            ],
          )
        )
      ),
      placeholder: (context, url) => const ShimmerCaroussel(),
      errorWidget: (context, url, error) => Center(child: Icon(Icons.error, color: Couleur().blue,),),
    ),
    ).toList();

    return Column(
      children: [
        CarouselSlider(
          items: promotions, 
          options: CarouselOptions(
            height: Dimension(context).height * 0.295,
            viewportFraction: 1.0,
            autoPlayInterval: const Duration(seconds: 6),
            autoPlayAnimationDuration: const Duration(seconds: 2),
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: ((index, reason) {
              setState(() {
                current = index;
              });
            })
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.promotion.map((item) {
              int index = widget.promotion.indexOf(item);
              return Container(
                width: current == index ? 19.5 : 7.5,
                height: 7.5,
                margin: EdgeInsets.symmetric(horizontal: Dimension(context).width * 0.007, vertical: 7),
                decoration: BoxDecoration(
                  color: Couleur().blue,
                  borderRadius: BorderRadius.circular(15)
                )
              );
            }).toList()
          ),
        )
      ]
    );
  }
}

