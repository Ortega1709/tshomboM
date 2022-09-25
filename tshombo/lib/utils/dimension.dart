import 'package:flutter/material.dart';

class Dimension {
  
  late double height;
  late double width;

  Dimension(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }

}