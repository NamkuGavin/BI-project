import 'package:bank_islam/shared/color.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:bank_islam/shared/text_style.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/image/logo_web.png",
                    scale: SizeConfig.pixelData == 1.0 ? 1.5 : 2,
                    color: SharedColor.primary),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sideBar(),
                    SizedBox(width: SizeConfig.screenWidth! * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tabBarWidget(),
                        SizedBox(height: SizeConfig.screenHeight! * 0.03),
                        Container(
                          padding: SizeConfig.pixelData == 1.0
                              ? EdgeInsets.fromLTRB(25, 25, 300, 50)
                              : EdgeInsets.fromLTRB(20, 20, 250, 40),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: SharedColor.primary),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Peace Be Upon you Liza",
                                  style:
                                      CustomTextStyle.bodytext3hite(context)),
                              SizedBox(height: SizeConfig.screenHeight! * 0.03),
                              Text("You have RM 55,000.00",
                                  style:
                                      CustomTextStyle.headline3white(context)),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: SharedColor.homeRightSidebg,
            child: Column(
              children: [Image.asset("assets/image/logo_web.png")],
            ),
          ),
        ),
      ],
    ));
  }

  sideBar() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: Colors.black,
      elevation: 12,
      color: Colors.white,
      child: Padding(
        padding: SizeConfig.pixelData == 1
            ? EdgeInsets.fromLTRB(30, 30, 30, 50)
            : EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: Column(
          children: [
            Image.asset("assets/icon/menu.png",
                scale: SizeConfig.pixelData == 1.0 ? 1.75 : 2.5),
            SizedBox(height: SizeConfig.screenHeight! * 0.05),
            Image.asset("assets/icon/shop.png",
                scale: SizeConfig.pixelData == 1.0 ? 1.75 : 2.5),
            SizedBox(height: SizeConfig.screenHeight! * 0.05),
            Image.asset("assets/icon/setting.png",
                scale: SizeConfig.pixelData == 1.0 ? 1.75 : 2.5),
            SizedBox(height: SizeConfig.screenHeight! * 0.05),
            Image.asset("assets/icon/bell.png",
                color: Color(0xFFACACAC),
                scale: SizeConfig.pixelData == 1.0 ? 1 : 1.5),
            SizedBox(height: SizeConfig.screenHeight! * 0.05),
            Image.asset("assets/image/photo_profile.png",
                scale: SizeConfig.pixelData == 1.0 ? 2.5 : 3.5),
          ],
        ),
      ),
    );
  }

  tabBarWidget() {
    return Row(
      children: [
        Text("Accounts", style: CustomTextStyle.textlabel2red(context)),
        SizedBox(width: SizeConfig.screenWidth! * 0.03),
        Text("Investment", style: CustomTextStyle.textlabel2black(context)),
        SizedBox(width: SizeConfig.screenWidth! * 0.03),
        Text("Cards-i", style: CustomTextStyle.textlabel2black(context)),
        SizedBox(width: SizeConfig.screenWidth! * 0.03),
        Text("Financing", style: CustomTextStyle.textlabel2black(context)),
        SizedBox(width: SizeConfig.screenWidth! * 0.03),
        Text("Dreams", style: CustomTextStyle.textlabel2black(context)),
      ],
    );
  }
}
