import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktopScreen;
  final Widget tabletScreen;
  final Widget mobileScreen;

  const ResponsiveWidget(
      {Key? key,
      required this.desktopScreen,
      required this.tabletScreen,
      required this.mobileScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    Widget screen = desktopScreen;

    if (screenWidth > 1000) {
      screen = desktopScreen;
    }

    if (screenWidth > 760 && screenWidth <= 1000) {
      screen = tabletScreen;
    }

    if (screenWidth <= 760) {
      screen = mobileScreen;
    }

    return screen;
  }
}
