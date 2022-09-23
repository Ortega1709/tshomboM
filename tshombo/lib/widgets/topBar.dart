import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/profile.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/views/panier.dart';

class TopBar extends StatefulWidget {
  final title;
  const TopBar({super.key ,required this.title});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {

  late String name = "Tshombo";
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: grey1
                  ),
                ),
                Text(
                  widget.title,
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: grey1
                  ),
                ),
              ],
            ),
            const ProfilePicture(
              name: "Kabwe Mulunda Ortega",
              radius: 20,
              fontsize: 18,
            )
          ],
        ),
      ),
    );
  }
}