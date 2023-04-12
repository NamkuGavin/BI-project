part of bankislam_texttheme;

class CustomTheme {
  static Color electric_red = Color(0xffdc2a54);
  static Color deep_blue = Color(0xFF143a81);
  static Color retro_yellow = Color(0xFFffc93a);
  static Color electric_blue = Color(0xFF74caff);
  static Color electric_green = Color(0xFF5ed9c1);
  static Color soft_pink = Color(0xFFffd6ec);
  static Color electric_purple = Color(0xFF813bf8);
  static Color graphite_black = Color(0xFF2b2b2b);
  static Color dark_grey = Color(0xFFacacac);
  static Color stone_grey = Color(0xFFd8d8d8);
  static Color sand_grey = Color(0xFFf1f1f1);
  static Color off_white = Color(0xFFfbfbfb);
  static Color prime_white = Color(0xFFffffff);
  static Color true_red = Color(0xFFd64949);
  static Color icy_green = Color(0xFF49ca95);

  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semibold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;

  static TextStyle headline1(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 60 : 55);
  }

  static TextStyle headline2(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 40 : 35);
  }

  static TextStyle headline3(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 35 : 30);
  }

  static TextStyle headline4(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 30 : 25);
  }

  static TextStyle subtitle(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 25 : 20);
  }

  static TextStyle body1(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 23 : 18);
  }

  static TextStyle body2(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 20 : 15);
  }

  static TextStyle button(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 25 : 20);
  }

  static TextStyle caption(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 17 : 12);
  }

  static TextStyle overline(BuildContext context,
      {required Color color, required FontWeight fontWeight}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: MediaQuery.of(context).devicePixelRatio == 1.0 ? 15 : 10);
  }
}
