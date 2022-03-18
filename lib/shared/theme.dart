import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

Color primaryColor = '#112340'.toColor();
Color secondaryColor = '#0BCAD4'.toColor();
Color lightBlueColor = '#EDFCFD'.toColor();
Color lightGrayColor = '#E9E9E9'.toColor();
Color grayColor = '#7D8797'.toColor();

double defaultMargin = 16;

TextStyle smallText = GoogleFonts.nunito(fontSize: 12, color: grayColor);
TextStyle mediumText = GoogleFonts.nunito(fontSize: 16, color: primaryColor);
TextStyle largeText = GoogleFonts.nunito(
  fontWeight: FontWeight.w600,
  fontSize: 20,
  color: primaryColor,
);

double phoneWidth(context) {
  return MediaQuery.of(context).size.width;
}

double phoneHeight(context) {
  return MediaQuery.of(context).size.height;
}
