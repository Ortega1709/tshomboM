import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/utils/typographie.dart';
import 'package:tshombo/views/commandes.dart';
import 'package:tshombo/views/recherche.dart';
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
  String currentUserName = "ortega";
  String currentName = "Kabwe Mulunda Ortega";
  String currentUserEmail = "kabweortega@gmail.com";
  String title = "Acceuil";
  late PageController pageController;

  List<String> titles = [
    "Acceuil",
    "Recherche",
    "Shops",
    "Commandes"
  ];

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

    Future<void> showInformationApplication(BuildContext context) async {
      return await showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 500,
              child: 
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "À propos",
                          style: h1(Dimension(context).height * 0.019, FontWeight.bold, Couleur().blue),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Icon(Icons.close, color: Couleur().blue,)
                        )
                      ],
                    ),
                  ],
                )
            ),
            actions: [

            ],
          );
      });
    }
    
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Couleur().blue,
        title: Text(title, style: h1(Dimension(context).height * 0.020, FontWeight.bold, Couleur().blue)),
        backgroundColor: Couleur().white,
        centerTitle: true,
        elevation: 0,
          actions:  [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Panier())
                );
              },
              icon: Icon(Icons.shopping_cart, color: Couleur().blue, ),
            ),
          ],
      ),

      drawer: Container(
        width: 259,
        decoration: BoxDecoration(
          color: Couleur().white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 3, 33, 76),
                    Color.fromARGB(220, 3, 34, 76),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfilePicture(name: currentUserName, radius: 41, fontsize: 27),
                  const SizedBox(height: 5),
                  Text(
                    "@$currentUserName",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: h1(Dimension(context).height * 0.019, FontWeight.bold, Colors.white),
                  ),
                  Text(
                    currentUserEmail,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: h1(Dimension(context).height * 0.017, FontWeight.normal, Colors.white),
                  )
                ],
              ),
            ),
            const Divider(height: 1, indent: 5, endIndent: 5,),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.privacy_tip, color: Couleur().blue,),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mes informations",
                            style: h1(Dimension(context).height * 0.017, FontWeight.bold, Couleur().blue),
                          ),
                          Icon(Icons.navigate_next, color: Couleur().blue,)
                        ],
                      ),
                    ),
                    
                    ListTile(
                      leading: Icon(Icons.add_rounded, color: Couleur().blue,),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ajouter un compte",
                            style: h1(Dimension(context).height * 0.017, FontWeight.bold, Couleur().blue),
                          ),
                          Icon(Icons.navigate_next, color: Couleur().blue,)
                        ],
                      ),
                    ),
                  
                    const Divider(height: 1, indent: 5, endIndent: 5,),
              
                    ListTile(
                      leading: Icon(Icons.logout, color: Couleur().blue,),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Se déconnecter",
                            style: h1(Dimension(context).height * 0.017, FontWeight.bold, Couleur().blue),
                          ),
                          Icon(Icons.navigate_next, color: Couleur().blue,)
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.share_rounded, color: Couleur().blue,),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Partager l'application",
                            style: h1(Dimension(context).height * 0.017, FontWeight.bold, Couleur().blue),
                          ),
                          Icon(Icons.navigate_next, color: Couleur().blue,)
                        ],
                      ),
                    ),
              
                    ListTile(
                      leading: Icon(Icons.info, color: Couleur().blue,),
                      onTap: () async {
                        await showInformationApplication(context);
                      },
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "À propos",
                            style: h1(Dimension(context).height * 0.017, FontWeight.bold, Couleur().blue),
                          ),
                          Icon(Icons.navigate_next, color: Couleur().blue,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),

      ),

      body: SizedBox.expand(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
              title = titles[index];
            });
          },
          children: const [
            Home(),
            Recherche(),
            Shops(),
            Commandes(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(

        // proprietes de la barre
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,

        // style de la barre
        selectedItemColor: Couleur().blue,
        unselectedItemColor: Couleur().blue,
        enableFeedback: true,
        backgroundColor: Couleur().white,
        iconSize: 26.5,
        unselectedLabelStyle: h1(Dimension(context).height * 0.0150, FontWeight.bold, Couleur().blue),
        selectedLabelStyle: h1(Dimension(context).height * 0.0170, FontWeight.bold, Couleur().blue),

        // logique de la barre
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            setState(() {
              pageController.jumpToPage(index);
            });
          });
        },

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Acceuil",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: "Recherche"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            activeIcon: Icon(Icons.store),
            label: "Shops"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            activeIcon: Icon(Icons.assignment),
            label: "Commandes"
          ),
          
        ],
      ),
    );
  }
}