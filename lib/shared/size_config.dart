import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? pixelData;
  static double? screenWidth;
  static double? screenHeight;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    pixelData = _mediaQueryData!.devicePixelRatio;
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}
