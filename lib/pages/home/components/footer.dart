import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utilities/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        desktopScreen: _desktopScreen(),
        tabletScreen: _tabletScreen(),
        mobileScreen: _mobileScreen());
  }

  Widget _desktopScreen() {
    return Container(
      // padding: EdgeInsets.only(bottom: 50),
      // decoration: BoxDecoration(color: kFooterBg),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _launchURL('https://github.com/franklinosei');
                    },
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://www.linkedin.com/in/franklin-osei-258b7210a');
                    },
                    child: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _launchURL('https://github.com/franklinosei');
                    },
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 30),
            // height: 500,
            width: double.infinity,
            decoration: BoxDecoration(color: kFooterBg),
            child: Center(
              child: Text(
                '\u00a9 Franklin Osei ${DateTime.now().year}',
                style: TextStyle(color: kWhiteColor),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _tabletScreen() {
    return Container(
      // padding: EdgeInsets.only(bottom: 50),
      // decoration: BoxDecoration(color: kFooterBg),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 30),
            // height: 500,
            width: double.infinity,
            decoration: BoxDecoration(color: kFooterBg),
            child: Center(
              child: Text(
                '\u00a9 Franklin Osei ${DateTime.now().year}',
                style: TextStyle(color: kWhiteColor),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _mobileScreen() {
    return Container(
      // padding: EdgeInsets.only(bottom: 50),
      // decoration: BoxDecoration(color: kFooterBg),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 30),
            // height: 500,
            width: double.infinity,
            decoration: BoxDecoration(color: kFooterBg),
            child: Center(
              child: Text(
                '\u00a9 Franklin Osei ${DateTime.now().year}',
                style: TextStyle(color: kWhiteColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
