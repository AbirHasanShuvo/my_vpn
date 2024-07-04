import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText(
    {text,
    fontFamilyRecieve,
    fontWeightRecieve,
    fontSizeReceive,
    colorsReceive}) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: fontFamilyRecieve == null
            ? GoogleFonts.lato().fontFamily
            : fontFamilyRecieve,
        fontWeight: fontWeightRecieve,
        fontSize: fontSizeReceive,
        color: colorsReceive == null ? Colors.white : colorsReceive),
  );
}
