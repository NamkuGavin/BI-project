import 'package:bank_islam/dummy_model.dart';
import 'package:bank_islam/shared/color.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:bank_islam/widget/cards_home_item.dart';
import 'package:bank_islam/widget/grid_item.dart';
import 'package:bankislam_texttheme/bankislam_texttheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHoveringButton1 = false;
  bool _isHoveringButton2 = false;
  bool _isHoveringButton3 = false;
  bool _isHoveringButton4 = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isExpand = true;
  List<FrequentTrans> listTrans = [
    FrequentTrans("Anak", "RM 250.50"),
    FrequentTrans("Hema Dewi", "RM 64.20"),
    FrequentTrans("Mom", "RM 1,000.00"),
    FrequentTrans("Sonia Chan", "RM 150.20"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        endDrawer: endDrawerTrans(),
        body: Row(
          children: [
            leftSide(),
            Expanded(
              child: Container(
                height: double.infinity,
                color: SharedColor.homeRightSidebg,
                child: Padding(
                  padding: SizeConfig.pixelData == 1.0
                      ? EdgeInsets.fromLTRB(40, 40, 40, 0)
                      : EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              shadowColor: Colors.black,
                              elevation: 8,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(12, 8, 25, 8),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/image/avatar_profile.png",
                                      scale: SizeConfig.pixelData == 1.0
                                          ? 1.3
                                          : 2.25,
                                    ),
                                    SizedBox(
                                        width: SizeConfig.screenWidth! * 0.01),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("GO Profile",
                                            style: CustomTheme.subtitle(context,
                                                color:
                                                    CustomTheme.graphite_black,
                                                fontWeight: CustomTheme.bold)),
                                        Text("3,000 pts",
                                            style: CustomTheme.body1(context,
                                                color:
                                                    CustomTheme.graphite_black,
                                                fontWeight:
                                                    CustomTheme.semibold)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Image.asset("assets/icon/logout.png",
                                scale:
                                    SizeConfig.pixelData == 1.0 ? 1.25 : 2.4),
                          ],
                        ),
                        SizedBox(height: SizeConfig.screenHeight! * 0.03),
                        Text("Personalised For You",
                            style: CustomTheme.subtitle(context,
                                color: CustomTheme.graphite_black,
                                fontWeight: CustomTheme.semibold)),
                        SizedBox(height: SizeConfig.screenHeight! * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: SizeConfig.pixelData == 1.0
                                    ? EdgeInsets.all(12)
                                    : EdgeInsets.all(5),
                                child: GestureDetector(
                                  onTap: () {
                                    _scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (PointerEvent event) => setState(
                                        () => _isHoveringButton1 = true),
                                    onExit: (PointerEvent event) => setState(
                                        () => _isHoveringButton1 = false),
                                    child: Container(
                                      height: SizeConfig.screenHeight! * 0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: _isHoveringButton1
                                            ? Colors.white70
                                            : Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.grey.withOpacity(0.25),
                                            spreadRadius: 5,
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              "assets/icon/trade_dollar.png",
                                              scale: SizeConfig.pixelData == 1.0
                                                  ? 1.5
                                                  : 2.5),
                                          SizedBox(
                                              height: SizeConfig.screenHeight! *
                                                  0.02),
                                          Text(
                                            "Transfer",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize:
                                                    SizeConfig.pixelData == 1.0
                                                        ? 15
                                                        : 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: SizeConfig.pixelData == 1.0
                                    ? EdgeInsets.all(12)
                                    : EdgeInsets.all(5),
                                child: GestureDetector(
                                  onTap: () {
                                    _scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (PointerEvent event) => setState(
                                        () => _isHoveringButton2 = true),
                                    onExit: (PointerEvent event) => setState(
                                        () => _isHoveringButton2 = false),
                                    child: Container(
                                      height: SizeConfig.screenHeight! * 0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: _isHoveringButton2
                                            ? Colors.white70
                                            : Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.grey.withOpacity(0.25),
                                            spreadRadius: 5,
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              "assets/icon/card_dollar.png",
                                              scale: SizeConfig.pixelData == 1.0
                                                  ? 1.5
                                                  : 2.5),
                                          SizedBox(
                                              height: SizeConfig.screenHeight! *
                                                  0.02),
                                          Text(
                                            "Pay Bills",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize:
                                                    SizeConfig.pixelData == 1.0
                                                        ? 15
                                                        : 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: SizeConfig.pixelData == 1.0
                                    ? EdgeInsets.all(12)
                                    : EdgeInsets.all(5),
                                child: GestureDetector(
                                  onTap: () {
                                    _scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (PointerEvent event) => setState(
                                        () => _isHoveringButton3 = true),
                                    onExit: (PointerEvent event) => setState(
                                        () => _isHoveringButton3 = false),
                                    child: Container(
                                      height: SizeConfig.screenHeight! * 0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: _isHoveringButton3
                                            ? Colors.white70
                                            : Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.grey.withOpacity(0.25),
                                            spreadRadius: 5,
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              "assets/icon/profile_fav.png",
                                              scale: SizeConfig.pixelData == 1.0
                                                  ? 1.5
                                                  : 2.5),
                                          SizedBox(
                                              height: SizeConfig.screenHeight! *
                                                  0.02),
                                          Text(
                                            "Favourites",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize:
                                                    SizeConfig.pixelData == 1.0
                                                        ? 15
                                                        : 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: SizeConfig.pixelData == 1.0
                                    ? EdgeInsets.all(12)
                                    : EdgeInsets.all(5),
                                child: GestureDetector(
                                  onTap: () {
                                    _scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (PointerEvent event) => setState(
                                        () => _isHoveringButton4 = true),
                                    onExit: (PointerEvent event) => setState(
                                        () => _isHoveringButton4 = false),
                                    child: Container(
                                      height: SizeConfig.screenHeight! * 0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: _isHoveringButton4
                                            ? Colors.white70
                                            : Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.grey.withOpacity(0.25),
                                            spreadRadius: 5,
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              "assets/icon/trade_card.png",
                                              scale: SizeConfig.pixelData == 1.0
                                                  ? 1.5
                                                  : 2.5),
                                          SizedBox(
                                              height: SizeConfig.screenHeight! *
                                                  0.02),
                                          Text(
                                            "Reload",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize:
                                                    SizeConfig.pixelData == 1.0
                                                        ? 15
                                                        : 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: SizeConfig.screenHeight! * 0.03),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                isExpand = !isExpanded;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                  isExpanded: isExpand,
                                  headerBuilder:
                                      (BuildContext context, bool isExpanded) {
                                    return ListTile(
                                      title: Text("My Frequent Transactions",
                                          style: CustomTheme.subtitle(context,
                                              color: CustomTheme.graphite_black,
                                              fontWeight:
                                                  CustomTheme.semibold)),
                                    );
                                  },
                                  body: Padding(
                                    padding: EdgeInsets.only(bottom: 25),
                                    child: Column(
                                      children: listTrans.map((e) {
                                        return Column(
                                          children: [
                                            ListTile(
                                                title: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      e.name,
                                                      style: CustomTheme.body2(
                                                          context,
                                                          color: CustomTheme
                                                              .graphite_black,
                                                          fontWeight:
                                                              CustomTheme
                                                                  .medium),
                                                    ),
                                                    Text(
                                                      e.price,
                                                      style: CustomTheme.body2(
                                                          context,
                                                          color: CustomTheme
                                                              .graphite_black,
                                                          fontWeight:
                                                              CustomTheme
                                                                  .medium),
                                                    ),
                                                  ],
                                                ),
                                                trailing: Image.asset(
                                                    "assets/icon/refresh.png",
                                                    scale: 1.5)),
                                            Divider(),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(height: SizeConfig.screenHeight! * 0.03),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("My Monthly Spending",
                                  style: CustomTheme.subtitle(context,
                                      color: CustomTheme.graphite_black,
                                      fontWeight: CustomTheme.semibold)),
                              SizedBox(width: SizeConfig.screenWidth! * 0.01),
                              Container(
                                padding: SizeConfig.pixelData == 1.0
                                    ? EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12)
                                    : EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 8),
                                decoration: BoxDecoration(
                                  borderRadius: SizeConfig.pixelData == 1.0
                                      ? BorderRadius.circular(15)
                                      : BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jan 2023",
                                      style: CustomTheme.body2(context,
                                          color: CustomTheme.graphite_black,
                                          fontWeight: CustomTheme.medium),
                                    ),
                                    SizedBox(
                                        width: SizeConfig.screenWidth! * 0.01),
                                    Icon(Icons.keyboard_arrow_down_outlined)
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  sideBar() {
    return Expanded(
      child: Card(
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
      ),
    );
  }

  tabBarWidget() {
    return Row(
      children: [
        Text("Accounts",
            style: CustomTheme.subtitle(context,
                color: CustomTheme.electric_red,
                fontWeight: CustomTheme.semibold)),
        SizedBox(width: SizeConfig.screenWidth! * 0.03),
        Text("Investment",
            style: CustomTheme.subtitle(context,
                color: CustomTheme.graphite_black,
                fontWeight: CustomTheme.semibold)),
        SizedBox(width: SizeConfig.screenWidth! * 0.03),
        Text("Cards-i",
            style: CustomTheme.subtitle(context,
                color: CustomTheme.graphite_black,
                fontWeight: CustomTheme.semibold)),
        SizedBox(width: SizeConfig.screenWidth! * 0.03),
        Text("Financing",
            style: CustomTheme.subtitle(context,
                color: CustomTheme.graphite_black,
                fontWeight: CustomTheme.semibold)),
        SizedBox(width: SizeConfig.screenWidth! * 0.03),
        Text("Dreams",
            style: CustomTheme.subtitle(context,
                color: CustomTheme.graphite_black,
                fontWeight: CustomTheme.semibold)),
      ],
    );
  }

  leftSide() {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/image/logo_bank.png",
              scale: SizeConfig.pixelData == 1.0 ? 2.5 : 3,
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.03),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sideBar(),
                homeOverview(),
              ],
            )
          ],
        ),
      ),
    );
  }

  homeOverview() {
    return Expanded(
      flex: 8,
      child: Padding(
        padding: EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tabBarWidget(),
            SizedBox(height: SizeConfig.screenHeight! * 0.03),
            Container(
              padding: SizeConfig.pixelData == 1.0
                  ? EdgeInsets.fromLTRB(25, 25, 50, 50)
                  : EdgeInsets.fromLTRB(20, 20, 25, 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: SharedColor.primary),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Peace Be Upon you Liza",
                          style: CustomTheme.headline3(context,
                              color: CustomTheme.off_white,
                              fontWeight: CustomTheme.bold)),
                      SizedBox(height: SizeConfig.screenHeight! * 0.03),
                      Text("You have RM 55,000.00",
                          style: CustomTheme.headline3(context,
                              color: CustomTheme.off_white,
                              fontWeight: CustomTheme.bold)),
                    ],
                  ),
                  Image.asset("assets/image/wallet.png",
                      scale: SizeConfig.pixelData == 1.0 ? 1.75 : 2.5)
                ],
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.03),
            Row(
              children: [
                Expanded(
                  child: Text("My Account Overview",
                      style: CustomTheme.subtitle(context,
                          color: CustomTheme.graphite_black,
                          fontWeight: CustomTheme.semibold)),
                ),
                Icon(Icons.grid_view_sharp, color: SharedColor.primary),
                SizedBox(width: SizeConfig.screenWidth! * 0.01),
                Icon(Icons.format_list_bulleted, color: SharedColor.icon)
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsHomeItem(
                  text1: "Qard Savings Account-i",
                  text2: "RM 3,600.00",
                  text3: "1212 1281 1939 92",
                  logo: Image.asset("assets/icon/visa.png",
                      scale: SizeConfig.pixelData == 1.0 ? 4 : 5),
                ),
                CardsHomeItem(
                  text1: "Al-Awfar Account-i",
                  text2: "RM 2,300.00",
                  text3: "02011 01 222222 3",
                  logo: Image.asset("assets/icon/visa.png",
                      scale: SizeConfig.pixelData == 1.0 ? 4 : 5),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsHomeItem(
                  text1: "Basic Savings Account-i",
                  text2: "RM 221.00",
                  text3: "02011 01 111111 2",
                  logo: Image.asset("assets/icon/visa.png",
                      scale: SizeConfig.pixelData == 1.0 ? 4 : 5),
                ),
                Container(
                    width: SizeConfig.screenWidth! * 0.28,
                    height: SizeConfig.screenHeight! * 0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/card/card1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/icon/add.png", scale: 3.5),
                        SizedBox(height: SizeConfig.screenHeight! * 0.02),
                        Text("Apply New Account",
                            style: CustomTheme.subtitle(context,
                                color: CustomTheme.graphite_black,
                                fontWeight: CustomTheme.semibold)),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  endDrawerTrans() {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(25)),
      child: Drawer(
        width: SizeConfig.screenWidth! * 0.5,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.closeEndDrawer();
                    },
                    icon: Icon(
                      Icons.close,
                      size: SizeConfig.pixelData == 1.0 ? 30 : 20,
                    )),
                SizedBox(height: SizeConfig.screenHeight! * 0.05),
                Text("T R A N S F E R",
                    style: CustomTheme.headline4(context,
                        color: CustomTheme.graphite_black,
                        fontWeight: CustomTheme.bold)),
                SizedBox(height: SizeConfig.screenHeight! * 0.03),
                Text("Who do you want to\ntransfer to?",
                    style: CustomTheme.headline3(context,
                        color: CustomTheme.graphite_black,
                        fontWeight: CustomTheme.bold)),
                SizedBox(height: SizeConfig.screenHeight! * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Favourites",
                            style: CustomTheme.subtitle(context,
                                color: CustomTheme.graphite_black,
                                fontWeight: CustomTheme.bold)),
                        SizedBox(width: SizeConfig.screenWidth! * 0.01),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: SizeConfig.pixelData == 1.0 ? 30 : 20,
                        )
                      ],
                    ),
                    Text("View all",
                        style: CustomTheme.subtitle(context,
                            color: CustomTheme.true_red,
                            fontWeight: CustomTheme.bold)),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.03),
                gridChoice(),
                SizedBox(height: SizeConfig.screenHeight! * 0.03),
                Text("New Transfer to",
                    style: CustomTheme.subtitle(context,
                        color: CustomTheme.graphite_black,
                        fontWeight: CustomTheme.bold)),
                SizedBox(height: SizeConfig.screenHeight! * 0.03),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Account",
                          style: CustomTheme.body1(context,
                              color: CustomTheme.graphite_black,
                              fontWeight: CustomTheme.bold)),
                      Icon(Icons.person,
                          size: SizeConfig.pixelData == 1.0 ? 30 : 20)
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.03),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mobile Number",
                          style: CustomTheme.body1(context,
                              color: CustomTheme.graphite_black,
                              fontWeight: CustomTheme.bold)),
                      Icon(Icons.phone_android,
                          size: SizeConfig.pixelData == 1.0 ? 30 : 20)
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.05),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("View More",
                        style: CustomTheme.subtitle(context,
                            color: CustomTheme.graphite_black,
                            fontWeight: CustomTheme.bold)),
                    SizedBox(width: SizeConfig.screenWidth! * 0.01),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: SizeConfig.pixelData == 1.0 ? 30 : 20,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  gridChoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  height: SizeConfig.screenHeight! * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dad CIMB",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    SizeConfig.pixelData == 1.0 ? 15 : 12),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Transform.scale(
                          scale: 1.75,
                          child: Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                CustomTheme.stone_grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  height: SizeConfig.screenHeight! * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mom Al-Awfar",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    SizeConfig.pixelData == 1.0 ? 15 : 12),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Transform.scale(
                          scale: 1.75,
                          child: Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                CustomTheme.stone_grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  height: SizeConfig.screenHeight! * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Little Bro Bank\nRakyat",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    SizeConfig.pixelData == 1.0 ? 15 : 12),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Transform.scale(
                          scale: 1.75,
                          child: Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                CustomTheme.stone_grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  height: SizeConfig.screenHeight! * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "My TH",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    SizeConfig.pixelData == 1.0 ? 15 : 12),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Transform.scale(
                          scale: 1.75,
                          child: Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                CustomTheme.stone_grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  height: SizeConfig.screenHeight! * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Katy ASB 1",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    SizeConfig.pixelData == 1.0 ? 15 : 12),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Transform.scale(
                          scale: 1.75,
                          child: Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                CustomTheme.stone_grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  height: SizeConfig.screenHeight! * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Little Bro SSPN",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    SizeConfig.pixelData == 1.0 ? 15 : 12),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Transform.scale(
                          scale: 1.75,
                          child: Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                CustomTheme.stone_grey),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
