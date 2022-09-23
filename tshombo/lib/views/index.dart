import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/views/commandes.dart';
import 'package:tshombo/views/compte.dart';
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
        backgroundColor: ghost,
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            pageController.jumpToPage(index);
          });
        },
        items: <BottomNavyBarItem> [
          BottomNavyBarItem(
            activeColor: grey1,
            textAlign: TextAlign.center,
            icon: const Icon(Icons.home_rounded, color: grey1),
            title: Text(
              "Accueil",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold
              )
            )
          ),

          BottomNavyBarItem(
            activeColor: grey1,
            textAlign: TextAlign.center,
            icon: const Icon(Icons.store_rounded, color: grey1),
            title: Text(
              "Shops",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold
              )
            )
          ),

          BottomNavyBarItem(
            activeColor: grey1,
            textAlign: TextAlign.center,
            icon: const Icon(Icons.assignment_rounded, color: grey1),
            title: Text(
              "Commandes",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold
              )
            )
          ),

          BottomNavyBarItem(
            activeColor: grey1,
            textAlign: TextAlign.center,
            icon: const Icon(Icons.shopping_cart_rounded, color: grey1),
            title: Text(
              "Panier",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold
              )
            )
          ),
        ],
      ),
    );
  }
}