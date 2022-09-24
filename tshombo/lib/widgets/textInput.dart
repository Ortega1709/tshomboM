import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tshombo/utils/couleurs.dart';



Widget textInput(String textHint, TextEditingController? textEditingController, bool obscured, Icon icon, TextInputType textInputType) {
  return TextFormField(
    cursorColor: grey1,
    keyboardType: textInputType,
    decoration: InputDecoration(
      labelText: textHint,
      suffixIcon: icon,
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: grey1,
          width: 1.3
        ),
      ),
      labelStyle: GoogleFonts.inter(
        color: grey1,
      )
    ),
    obscureText: obscured,
    obscuringCharacter: '*',
  );
}