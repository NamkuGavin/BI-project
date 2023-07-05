import 'package:bank_islam/shared/color.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItemHome extends StatefulWidget {
  final String logo;
  final String title;
  final Function() onTapping;
  GridItemHome(
      {Key? key,
      required this.logo,
      required this.title,
      required this.onTapping})
      : super(key: key);

  @override
  State<GridItemHome> createState() => _GridItemHomeState();
}

class _GridItemHomeState extends State<GridItemHome> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: SizeConfig.pixelData == 1.0
            ? EdgeInsets.all(12)
            : EdgeInsets.all(5),
        child: GestureDetector(
          onTap: widget.onTapping,
          child: Container(
            height: SizeConfig.screenHeight! * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 5,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.logo,
                    scale: SizeConfig.pixelData == 1.0 ? 1.5 : 2.5),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                Text(
                  widget.title,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.pixelData == 1.0 ? 15 : 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
