import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utilities/responsive_widget.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        desktopScreen: _desktopScreen(),
        tabletScreen: _tabletScreen(),
        mobileScreen: _mobileScreen());
  }

  Widget _desktopScreen() {
    return Container(
      decoration: BoxDecoration(color: kSectionBackground1),
      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 80),
      child: Column(
        children: [
          Text(
            'About Me',
            style: TextStyle(color: kTextColor, fontSize: 35),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image(
                  width: 450,
                  height: 450,
                  image: AssetImage('images/my_pic.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: Text(
                  'My name is Franklin Osei.\nI am currently a student reading \na Bachelor of Science in Computer Science\nI live in Ghana.',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tabletScreen() {
    return Container(
      decoration: BoxDecoration(color: kSectionBackground1),
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      child: Column(
        children: [
          Text(
            'About Me',
            style: TextStyle(color: kTextColor, fontSize: 35),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image(
                  width: 250,
                  height: 250,
                  image: AssetImage('images/my_pic.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Text(
                  'My name is Franklin Osei.\nI am currently a student reading \na Bachelor of Science\nin Computer Science\nI live in Ghana.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _mobileScreen() {
    return Container(
      decoration: BoxDecoration(color: kSectionBackground1),
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      child: Column(
        children: [
          Text(
            'About Me',
            style: TextStyle(color: kTextColor, fontSize: 35),
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(350),
                child: Image(
                  width: 200,
                  height: 200,
                  image: AssetImage('assets/images/my_pic.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'My name is Franklin Osei.\nI am currently a student reading \na Bachelor of Science\nin Computer Science\nI live in Ghana.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
