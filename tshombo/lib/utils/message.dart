import 'package:flutter/material.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/typographie.dart';

// custom message ... 
// ignore: non_constant_identifier_names
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> Message(BuildContext context, String message) {
  SnackBar snackBar = SnackBar(content: Text(message, style: h1(null, FontWeight.normal, Colors.white)), backgroundColor: Couleur().blue,);
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}