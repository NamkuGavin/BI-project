import 'package:bank_islam/shared/color.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItem extends StatefulWidget {
  final String logo;
  final String title;
  const GridItem({Key? key, required this.logo, required this.title})
      : super(key: key);

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          height: SizeConfig.screenHeight! * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.logo,
                  scale: SizeConfig.pixelData == 1.0 ? 1 : 2),
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
    );
  }
}
