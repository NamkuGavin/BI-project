import 'package:bank_islam/shared/color.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle headline1white(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 25 : 20);
  }

  static TextStyle headline1black(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontSize: SizeConfig.pixelData == 1.0 ? 25 : 15);
  }

  static TextStyle headline2white(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 60 : 55);
  }

  static TextStyle headline2black(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: SizeConfig.pixelData == 1.0 ? 50 : 30);
  }

  static TextStyle headline3white(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 40 : 25);
  }

  static TextStyle headline3black(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: SizeConfig.pixelData == 1.0 ? 40 : 25);
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

  static TextStyle bodytext2white(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 17 : 14);
  }

  static TextStyle bodytext2black(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontSize: SizeConfig.pixelData == 1.0 ? 17 : 14);
  }

  static TextStyle bodytext3hite(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle bodytext3black(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle textlabel1(BuildContext context) {
    return GoogleFonts.montserrat(
        color: Color(0xFFACACAC),
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle textlabel2red(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: SharedColor.primary,
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle textlabel2black(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle textinfored(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        color: SharedColor.primary,
        fontSize: SizeConfig.pixelData == 1.0 ? 17 : 14);
  }

  static TextStyle textinfoblack(BuildContext context) {
    return GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: SizeConfig.pixelData == 1.0 ? 17 : 14);
  }

  static TextStyle textfield1(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: SizeConfig.pixelData == 1.0 ? 20 : 15);
  }

  static TextStyle textfield2(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: SizeConfig.pixelData == 1.0 ? 30 : 20);
  }
}
