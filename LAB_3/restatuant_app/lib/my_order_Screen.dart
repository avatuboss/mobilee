import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common/buy_widget.dart';
import 'common/colors.dart';
import 'common/selected_item_widget.dart';

/* 
Title: MyOrderScreen,
Purpose:MyOrderScreen,
Required Widget:SelectedItemWidget,ItemAddRemoveWidget,BuyWidget
Created Date:11 July 2020,
Created By:https://flutteragency.com/
*/

class MyOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kBackGroundColor,
    ));
    return Scaffold(
        backgroundColor: kBackGroundColor,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: BuyWidget(),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  .1,
                  1,
                ],
                colors: [
                  kBackGroundColor,
                  kBackGroundColor,
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "My Order",
                      style: GoogleFonts.faustina(
                        color: kBlackColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "3 items",
                      style: GoogleFonts.faustina(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Stack(
                      //overflow: Overflow.visible,
                      children: <Widget>[
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            height: height * .25,
                            width: width * .95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Center(
                              child: Container(
                                height: height * .20,
                                width: width * .80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: height * .1 / 2,
                                  ),
                                  Text(
                                    "Summer Sale",
                                    style: GoogleFonts.faustina(
                                      fontSize: 12,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "25% OFF",
                                    style: GoogleFonts.faustina(
                                      fontSize: 26,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: height * .13 / 2,
                                    width: width * .30,
                                    decoration: BoxDecoration(
                                      color: kCategoryBackColor,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "sum40sa",
                                        style: GoogleFonts.faustina(
                                          fontSize: 14,
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                "assets/images/cones.png",
                                height: height * .20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SelectedItemWidget(
                      itemImg: "assets/images/shake.jpg",
                      itemName: "Pink Negroni",
                      itemAmount: "10,95",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SelectedItemWidget(
                      itemImg: "assets/images/watermelonJuice.jpg",
                      itemName: "Watermelon Mojito",
                      itemAmount: "8,55",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SelectedItemWidget(
                      itemImg: "assets/images/watermelonmojito.jpg",
                      itemName: "Sex on the Beach",
                      itemAmount: "10,75",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Total:",
                          style: GoogleFonts.faustina(
                            fontSize: 22,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "\$",
                              style: GoogleFonts.faustina(
                                fontSize: 12,
                                color: kBlackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "30,25",
                              style: GoogleFonts.faustina(
                                fontSize: 26,
                                color: kBlackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
