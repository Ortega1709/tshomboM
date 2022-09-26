import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/typographie.dart';
import 'package:tshombo/views/commandes.dart';
import 'package:tshombo/views/home.dart';
import 'package:tshombo/views/panier.dart';
import 'package:tshombo/views/shops.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {

  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: const [
            Home(),
            Shops(),
            Commandes(),
            Panier()
          ],
        ),
      ),

      bottomNavigationBar: BottomNavyBar(
        showElevation: false,
        backgroundColor: Couleur().white,
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            pageController.jumpToPage(index);
          });
        },
        items: <BottomNavyBarItem> [
          BottomNavyBarItem(
            activeColor: Couleur().blue,
            textAlign: TextAlign.center,
            icon: Icon(Icons.home_rounded, color: Couleur().blue),
            title: Text(
              "Accueil",
              style: h1(15, FontWeight.bold, Couleur().blue)
            )
          ),

          BottomNavyBarItem(
            activeColor: Couleur().blue,
            textAlign: TextAlign.center,
            icon: Icon(Icons.store_rounded, color: Couleur().blue),
            title: Text(
              "Shops",
              style: h1(15, FontWeight.bold, Couleur().blue)
            )
          ),

          BottomNavyBarItem(
            activeColor: Couleur().blue,
            textAlign: TextAlign.center,
            icon: Icon(Icons.assignment_rounded, color: Couleur().blue),
            title: Text(
              "Commandes",
              style: h1(15, FontWeight.bold, Couleur().blue)
            )
          ),

          BottomNavyBarItem(
            activeColor: Couleur().blue,
            textAlign: TextAlign.center,
            icon: Icon(Icons.shopping_cart_rounded, color: Couleur().blue),
            title: Text(
              "Panier",
              style: h1(15, FontWeight.bold, Couleur().blue)
            )
          ),
        ],
      ),
    );
  }
}