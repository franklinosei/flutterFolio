import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utilities/responsive_widget.dart';

class AreasOfInterest extends StatelessWidget {
  const AreasOfInterest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        desktopScreen: _buildDesktopScreen(context),
        tabletScreen: _buildTabletScreen(),
        mobileScreen: _buildMobileScreen());
  }

  Widget _buildDesktopScreen(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, right: 40, left: 40, bottom: 80),
      margin: EdgeInsets.only(top: 40),
      // height: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(color: kSectionBackground),

      child: Column(
        children: <Widget>[
          Text(
            'Areas of interest',
            style: TextStyle(fontSize: 35, color: kTextColor),
          ),
          SizedBox(
            height: 60,
          ),
          Wrap(
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              //1
              Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.robot,
                    size: 50,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Machine Learning',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
              //2
              Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.mobile,
                    size: 50,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Mobile Application Development',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums,',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              //3
              Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.americanSignLanguageInterpreting,
                    size: 50,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'NLP',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),

              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Icon(
                    FontAwesomeIcons.cogs,
                    size: 50,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Model Deployment',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Icon(FontAwesomeIcons.cloudDownloadAlt, size: 50),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Cloud Computing',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Icon(
                    FontAwesomeIcons.laptopCode,
                    size: 50,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Web Development',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTabletScreen() {
    return Container(
      padding: EdgeInsets.only(top: 40, right: 55, left: 55, bottom: 80),
      margin: EdgeInsets.only(top: 40),
      // height: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(color: kSectionBackground),

      child: Column(
        children: <Widget>[
          Text(
            'Areas of interest',
            style: TextStyle(fontSize: 35, color: kTextColor),
          ),
          SizedBox(
            height: 60,
          ),
          Wrap(
            spacing: 20,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              //1
              Column(
                children: <Widget>[
                  Icon(FontAwesomeIcons.robot, size: 40,),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Machine Learning',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
              //2
              Column(
                children: <Widget>[
                  Icon(FontAwesomeIcons.mobile, size: 40,),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Mobile Application Development',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              //3
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Icon(FontAwesomeIcons.americanSignLanguageInterpreting, size: 40,),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'NLP',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),

              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Icon(FontAwesomeIcons.cogs, size: 40,),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Model Deployment',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Icon(FontAwesomeIcons.cloudDownloadAlt, size: 40,),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Cloud Computing',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Icon(FontAwesomeIcons.laptopCode, size: 40,),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Web Development',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMobileScreen() {
    return Container(
      padding: EdgeInsets.only(top: 40, right: 40, left: 40, bottom: 80),
      margin: EdgeInsets.only(top: 40),
      // height: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(color: kSectionBackground),

      child: Column(
        children: <Widget>[
          Text(
            'Areas of interest',
            style: TextStyle(fontSize: 35, color: kTextColor),
          ),
          SizedBox(
            height: 60,
          ),
          Wrap(
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              //1
              Column(
                children: <Widget>[
                  Icon(FontAwesomeIcons.robot, size: 35,),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Machine Learning',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              //2
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 65,
                  ),
                  Icon(FontAwesomeIcons.mobile, size: 35,),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mobile Application Development',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              //3
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 65,
                  ),
                  Icon(FontAwesomeIcons.americanSignLanguageInterpreting, size: 35,),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'NLP',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),

              Column(
                children: <Widget>[
                  SizedBox(
                    height: 65,
                  ),
                  Icon(FontAwesomeIcons.cogs, size: 35,),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Model Deployment',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 65,
                  ),
                  Icon(FontAwesomeIcons.cloudDownloadAlt, size: 35,),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Cloud Computing',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 65,
                  ),
                  Icon(FontAwesomeIcons.laptopCode, size: 35,),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Web Development',
                    style: TextStyle(fontSize: 25, color: kTextColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Put the description here. Lorem ipsum datum dorime iptums, \nPut the description here. Lorem ipsum datum dorime iptums',
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
