import 'package:flutter/material.dart';
import 'package:tshombo/models/dataMarque.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/utils/message.dart';
import 'package:tshombo/utils/typographie.dart';


class ListViewMarque extends StatefulWidget {

  final List<DataMarque> listMarque;
  const ListViewMarque({super.key, required this.listMarque});

  @override
  State<ListViewMarque> createState() => _ListViewMarqueState();
}

class _ListViewMarqueState extends State<ListViewMarque> {


  @override
  Widget build(BuildContext context) {


    return Row(
      children: [
        for (var item in widget.listMarque)
          marques(item.nom, context)
      ],
    );
  }
}

Widget marques(String nom, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Message(context, nom);
    },
    child: Padding(
      padding: const EdgeInsets.all(1.2),
      child: Chip(
        backgroundColor: Couleur().blue,
        label: Text(
          nom,
          style: h1(Dimension(context).height * 0.0155, FontWeight.normal, Colors.white)
        ),
      ),
    ),
  );
}