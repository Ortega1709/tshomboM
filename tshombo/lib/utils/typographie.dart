import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle? h1 (double? size, FontWeight fontWeight, Color? color) {
  return GoogleFonts.ubuntu(
    fontSize: size,
    fontWeight: fontWeight,
    color: color
  );
}