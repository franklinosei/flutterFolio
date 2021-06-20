import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class SkillsLibrary extends StatelessWidget {
  const SkillsLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: kSectionBackground),
        child: Column(
          children: [
            Text(
              'Skills Library',
              style: TextStyle(color: kTextColor, fontSize: 35),
            )
          ],
        ));
  }
}
