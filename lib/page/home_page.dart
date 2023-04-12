import 'package:bank_islam/dummy_model.dart';
import 'package:bank_islam/shared/color.dart';
import 'package:bank_islam/shared/size_config.dart';
import 'package:bank_islam/widget/grid_item.dart';
import 'package:bank_islam/widget/grid_item_home.dart';
import 'package:bankislam_texttheme/bankislam_texttheme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                                  scale:
                                      SizeConfig.pixelData == 1.0 ? 1.3 : 2.25,
                                ),
                                SizedBox(width: SizeConfig.screenWidth! * 0.01),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("GO Profile",
                                        style: CustomTheme.subtitle(context,
                                            color: CustomTheme.graphite_black,
                                            fontWeight: CustomTheme.bold)),
                                    Text("3,000 pts",
                                        style: CustomTheme.body1(context,
                                            color: CustomTheme.graphite_black,
                                            fontWeight: CustomTheme.semibold)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Image.asset("assets/icon/logout.png",
                            scale: SizeConfig.pixelData == 1.0 ? 1.25 : 2.4),
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
                        GridItemHome(
                            logo: "assets/icon/trade_dollar.png",
                            title: "Transfer"),
                        GridItemHome(
                            logo: "assets/icon/card_dollar.png",
                            title: "Pay Bills"),
                        GridItemHome(
                            logo: "assets/icon/profile_fav.png",
                            title: "Favourites"),
                        GridItemHome(
                            logo: "assets/icon/trade_card.png",
                            title: "Reload"),
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
                                          fontWeight: CustomTheme.semibold)),
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
                                                          CustomTheme.medium),
                                                ),
                                                Text(
                                                  e.price,
                                                  style: CustomTheme.body2(
                                                      context,
                                                      color: CustomTheme
                                                          .graphite_black,
                                                      fontWeight:
                                                          CustomTheme.medium),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Jan 2023",
                                  style: CustomTheme.body2(context,
                                      color: CustomTheme.graphite_black,
                                      fontWeight: CustomTheme.medium),
                                ),
                                SizedBox(width: SizeConfig.screenWidth! * 0.01),
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
          ],
        ),
      ),
    );
  }
}
