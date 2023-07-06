import 'package:bank_islam/shared/size_config.dart';
import 'package:bankislam_texttheme/bankislam_texttheme.dart';
import 'package:flutter/material.dart';

class CardsHomeItem extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final Image logo;
  const CardsHomeItem(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.logo})
      : super(key: key);

  @override
  State<CardsHomeItem> createState() => _CardsHomeItemState();
}

class _CardsHomeItemState extends State<CardsHomeItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.28,
      height: SizeConfig.screenHeight! * 0.25,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            CustomTheme.electric_red,
            CustomTheme.electric_purple,
          ],
          stops: [
            0.1,
            0.9,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.text1,
              style: CustomTheme.body1(context,
                  color: CustomTheme.prime_white,
                  fontWeight: CustomTheme.semibold)),
          Expanded(child: Container()),
          Text(widget.text2,
              style: CustomTheme.headline4(context,
                  color: CustomTheme.prime_white,
                  fontWeight: CustomTheme.bold)),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.text3,
                  style: CustomTheme.body1(context,
                      color: CustomTheme.prime_white,
                      fontWeight: CustomTheme.medium)),
              widget.logo,
            ],
          ),
        ],
      ),
    );
  }
}
