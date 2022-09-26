import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/utils/typographie.dart';

class TopBar extends StatefulWidget {

  // ignore: prefer_typing_uninitialized_variables
  final title;
  // ignore: prefer_typing_uninitialized_variables
  final currentUser;

  const TopBar({super.key ,required this.title, required this.currentUser});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {

  @override
  Widget build(BuildContext context) {

    var dimension = Dimension(context);

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            Text(
              widget.title,
              style: h1(dimension.height * 0.025, FontWeight.bold, Couleur().blue),
            ),
            ProfilePicture(
              name: widget.currentUser,
              fontsize: dimension.height * 0.020,
              radius: dimension.height * 0.028,
            ),
          ],
        ),
      ),
    );
  }
}