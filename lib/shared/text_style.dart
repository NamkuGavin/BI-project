import 'package:bank_islam/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle headline1(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 25 : 20);
  }

  static TextStyle headline2(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 60 : 55);
  }

  static TextStyle bodytext1black(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle bodytext1white(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle bodytext2(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 17 : 14);
  }

  static TextStyle textlabel(BuildContext context) {
    return GoogleFonts.montserrat(
        color: Color(0xFFACACAC),
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle textfield(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }
}
