import 'package:flutter/material.dart';

final kHeaderColor = Color.fromRGBO(30, 136, 229, 1);
final kButtonColor = Color.fromRGBO(255, 87, 34, 1);
final kButtonHighlightColor = Color.fromRGBO(255, 20, 67, 1);
final kSectionBackground = Colors.blueGrey[400];
final kSectionBackground1 = Color.fromRGBO(255, 87, 34, 0.1);
final kTextColor = Colors.blueGrey[900];
final kWhiteColor = Colors.white;

final int kDesktopMaxWidth = 1000;
final int kTabletMaxWidth = 760;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * 0.8;
