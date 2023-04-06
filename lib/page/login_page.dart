import 'package:bank_islam/shared/color.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:bank_islam/shared/text_style.dart';
import 'package:bank_islam/widget/grid_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _continue = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      endDrawer: _continue ? enddrawerPass() : enddrawerConfirm(),
      appBar: appBarWidget(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/bg_web.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 14,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    leftSide(),
                    rightSide(),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                    "About Bank Islam | Terms & Conditions | Client Charter | User Guide | Privacy Notice © Bank Islam Malaysia Berhad (98127-X). All rights reserved.",
                    style: CustomTextStyle.bodytext2white(context)),
              )
            ],
          ),
        ),
      ),
    );
  }

  appBarAction() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 25),
          child: Image.asset("assets/icon/log.png",
              scale: SizeConfig.pixelData == 1.0 ? 1.5 : 2),
        ),
        Padding(
          padding: EdgeInsets.only(right: 50),
          child: Text("Zuhr, Kuala Lumpur 1:05pm",
              style: CustomTextStyle.bodytext2white(context)),
        ),
        Padding(
          padding: EdgeInsets.only(right: 50),
          child: Text("GO Lifestyle",
              style: CustomTextStyle.bodytext1white(context)),
        ),
        Padding(
          padding: EdgeInsets.only(right: 50),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text("GO Register",
                  style: CustomTextStyle.bodytext1black(context)),
            ),
          ),
        )
      ],
    );
  }

  appBarWidget() {
    return AppBar(
      toolbarHeight: SizeConfig.screenHeight! * 0.1,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.only(left: 50, top: 10),
        child: Image.asset("assets/image/logo_web.png",
            scale: SizeConfig.pixelData == 1.0 ? 1.5 : 2),
      ),
      actions: [
        appBarAction(),
      ],
    );
  }

  leftSide() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("G O   B E Y O N D",
            style: CustomTextStyle.headline1white(context)),
        SizedBox(height: SizeConfig.screenHeight! * 0.03),
        Text("Islamic banking\nfor everyone",
            style: CustomTextStyle.headline2white(context)),
        SizedBox(height: SizeConfig.screenHeight! * 0.07),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.vertical,
          children: [
            SizedBox(
              width: SizeConfig.screenWidth! * 0.35,
              child: TextFormField(
                style: CustomTextStyle.textfield1(context),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Enter your username",
                  labelStyle: CustomTextStyle.textlabel(context),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset("assets/icon/profile.png", scale: 1.75),
                  ),
                  suffixIcon: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // added line
                      mainAxisSize: MainAxisSize.min, // added line
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Image.asset("assets/icon/security.png",
                              scale: SizeConfig.pixelData == 1.0 ? 1.75 : 2.25),
                        ),
                        VerticalDivider(
                          endIndent: 12,
                          indent: 12,
                          thickness: 1.5,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: ElevatedButton(
                            onPressed: () {
                              _scaffoldKey.currentState!.openEndDrawer();
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                backgroundColor: SharedColor.primary),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("GO Login",
                                  style:
                                      CustomTextStyle.bodytext1white(context)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 30),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                  color: SharedColor.primary.withOpacity(0.5)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: Text("First Time User    |    Forgot Login Details?",
                    style: CustomTextStyle.bodytext2white(context)),
              ),
            )
          ],
        ),
      ],
    );
  }

  rightSide() {
    return SizedBox(
      height: SizeConfig.screenHeight! * 0.5,
      width: SizeConfig.screenWidth! * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(logo: "assets/icon/trade_dollar.png", title: "Transfer"),
              GridItem(logo: "assets/icon/card_dollar.png", title: "Pay Bills"),
              GridItem(logo: "assets/icon/trade_card.png", title: "Reload"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(
                  logo: "assets/icon/profile_fav.png", title: "Favourites"),
              GridItem(
                  logo: "assets/icon/saving_money.png", title: "Pay Zakat"),
              GridItem(logo: "assets/icon/give_dollar.png", title: "Sadaqa"),
            ],
          ),
        ],
      ),
    );
  }

  enddrawerConfirm() {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(25)),
      child: Drawer(
        width: SizeConfig.screenWidth! * 0.5,
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState!.closeEndDrawer();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: SizeConfig.pixelData == 1.0 ? 30 : 20,
                      )),
                  Image.asset("assets/icon/security.png",
                      scale: SizeConfig.pixelData == 1.0 ? 1 : 2),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Image.asset(
                "assets/image/photo_profile.png",
                scale: SizeConfig.pixelData == 1.0 ? 2 : 3,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Text("L i z a I b r a h i m 9",
                  style: CustomTextStyle.headline1black(context)),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Text("Is this your security image\nand phrase?",
                  style: CustomTextStyle.headline2black(context)),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Center(
                  child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.vertical,
                children: [
                  Image.asset("assets/image/icon_profile.png",
                      scale: SizeConfig.pixelData == 1.0 ? 1.75 : 3),
                  Text("BTS", style: CustomTextStyle.bodytext1black(context))
                ],
              )),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: ElevatedButton(
                        onPressed: () {
                          _scaffoldKey.currentState!.closeEndDrawer();
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text("Not mine",
                              style: CustomTextStyle.bodytext1black(context)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _continue = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: SharedColor.primary),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text("Yes",
                              style: CustomTextStyle.bodytext1white(context)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  enddrawerPass() {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(25)),
      child: Drawer(
        width: SizeConfig.screenWidth! * 0.5,
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _continue = false;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: SizeConfig.pixelData == 1.0 ? 30 : 20,
                      )),
                  Image.asset("assets/icon/security.png",
                      scale: SizeConfig.pixelData == 1.0 ? 1 : 2),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Image.asset(
                "assets/image/photo_profile.png",
                scale: SizeConfig.pixelData == 1.0 ? 2 : 3,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Text("L i z a I b r a h i m 9",
                  style: CustomTextStyle.headline1black(context)),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Text("Password, please",
                  style: CustomTextStyle.headline2black(context)),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Text("Password", style: CustomTextStyle.bodytext2black(context)),
              SizedBox(height: SizeConfig.screenHeight! * 0.01),
              TextFormField(
                obscureText: true,
                style: CustomTextStyle.textfield2(context),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "What’s your password?",
                  labelStyle: CustomTextStyle.textlabel(context),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.01),
              Align(
                alignment: Alignment.topRight,
                child: Text("Forgot Login Details?",
                    style: CustomTextStyle.textinfored(context)),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Important Notice",
                            style: CustomTextStyle.textinfoblack(context)),
                        SizedBox(width: SizeConfig.screenWidth! * 0.01),
                        Image.asset("assets/icon/bell.png",
                            scale: SizeConfig.pixelData == 1.0 ? 1.5 : 2),
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenHeight! * 0.02),
                    Text("Avoid scams! Never reveal your TAC number to anyone.",
                        style: CustomTextStyle.bodytext2black(context)),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(SizeConfig.screenWidth! * 0.2,
                          SizeConfig.screenHeight! * 0.07),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      backgroundColor: SharedColor.primary),
                  child: Text("Login",
                      style: CustomTextStyle.bodytext1white(context)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
