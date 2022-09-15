import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
        title: Text(
          "Tshombo",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),

      body: SizedBox.expand(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: [
            
          ],
        ),
      ),

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            pageController.jumpToPage(index);
          });
        },
        items: <BottomNavyBarItem> [
          BottomNavyBarItem(
            icon: const Icon(Icons.home_rounded),
            title: Text(
              "Accueil",
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.bold
              )
            )
          ),

          BottomNavyBarItem(
            icon: const Icon(Icons.store_rounded),
            title: Text(
              "Shops",
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.bold
              )
            )
          ),

          BottomNavyBarItem(
            icon: const Icon(Icons.assignment_rounded),
            title: Text(
              "Commandes",
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.bold
              )
            )
          ),

          BottomNavyBarItem(
            icon: const Icon(Icons.account_circle_rounded),
            title: Text(
              "Mon compte",
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.bold
              )
            )
          ),
        ],
      ),
    );
  }
}