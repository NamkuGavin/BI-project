import 'package:bank_islam/shared/color.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItemSecurityTips extends StatefulWidget {
  final String logo;
  final String title;
  GridItemSecurityTips({Key? key, required this.logo, required this.title})
      : super(key: key);

  @override
  State<GridItemSecurityTips> createState() => _GridItemSecurityTipsState();
}

class _GridItemSecurityTipsState extends State<GridItemSecurityTips> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: SizeConfig.screenHeight! * 0.2,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(color: SharedColor.border),
            bottom: BorderSide(color: SharedColor.border),
          ),
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
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.pixelData == 1.0 ? 15 : 12),
            ),
          ],
        ),
      ),
    );
  }
}
