import 'package:flutter/material.dart';

final kHeaderColor = Colors.black;
final kButtonColor = Color.fromRGBO(255, 87, 34, 1);
final kButtonHighlightColor = Color.fromRGBO(255, 20, 67, 1);
final kSectionBackground = Colors.blueGrey[100];
final kSectionBackground1 = Color.fromRGBO(255, 87, 34, 0.03);
final kTextColor = Colors.blueGrey[900];
final kWhiteColor = Colors.white;
final kFooterBg = Colors.black;

final int kDesktopMaxWidth = 1000;
final int kTabletMaxWidth = 760;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * 0.8;

const textInputDecoration = InputDecoration(
  //fillColor: Colors.white,
  
  //filled: true,
  // contentPadding: EdgeInsets.all(15.0),
  hintStyle: TextStyle(color: Colors.white),
  labelStyle: TextStyle(color: Colors.grey),
  // hintStyle: TextStyle(color: Colors.white),
  // enabledBorder: OutlineInputBorder(
  //   // borderSide: BorderSide(color: colors.whiteColor),
  // ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromRGBO(255, 87, 34, 1)
    )
  ),
  
);
