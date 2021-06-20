import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utilities/responsive_widget.dart';

class Libraries extends StatelessWidget {
  const Libraries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        desktopScreen: _buildDesktopScreen(),
        tabletScreen: _buildTabletScreen(),
        mobileScreen: _buildMobileScreen());
  }

  Widget _buildDesktopScreen() {
    return Container(
      // decoration: BoxDecoration(color: kSectionBackground1),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 120.0, right: 120.0, top: 70, bottom: 70),
        child: Wrap(
          spacing: 30,
          children: [
            Image(
              image: AssetImage('/images/tf.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/python.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/dart.png'),
              height: 80,
              width: 120,
            ),
            Image(
              image: AssetImage('/images/sklearn.png'),
              height: 80,
              width: 120,
            ),
            Image(
              image: AssetImage('/images/keras.png'),
              height: 80,
              width: 80,
            ),
            Image(
              image: AssetImage('/images/react.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/html.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/css.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/js.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/flask.png'),
              height: 90,
              width: 90,
            ),
            Image(
              image: AssetImage('/images/django.png'),
              height: 70,
              width: 70,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTabletScreen() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 120.0, right: 120.0, top: 70, bottom: 70),
        child: Wrap(
          spacing: 40,
          alignment: WrapAlignment.center,
          children: [
            Image(
              image: AssetImage('/images/tf.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/python.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/dart.png'),
              height: 80,
              width: 120,
            ),
            Image(
              image: AssetImage('/images/sklearn.png'),
              height: 80,
              width: 120,
            ),
            Image(
              image: AssetImage('/images/keras.png'),
              height: 80,
              width: 80,
            ),
            Image(
              image: AssetImage('/images/react.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/html.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/css.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/js.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/flask.png'),
              height: 90,
              width: 90,
            ),
            Image(
              image: AssetImage('/images/django.png'),
              height: 70,
              width: 70,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMobileScreen() {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10.0, right: 10.0, top: 30, bottom: 30),
        child: Wrap(
          spacing: 30,
          alignment: WrapAlignment.center,
          children: [
            Image(
              image: AssetImage('/images/tf.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/python.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/dart.png'),
              height: 80,
              width: 120,
            ),
            Image(
              image: AssetImage('/images/sklearn.png'),
              height: 80,
              width: 120,
            ),
            Image(
              image: AssetImage('/images/keras.png'),
              height: 80,
              width: 80,
            ),
            Image(
              image: AssetImage('/images/react.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/html.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/css.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/js.png'),
              height: 70,
              width: 70,
            ),
            Image(
              image: AssetImage('/images/flask.png'),
              height: 90,
              width: 90,
            ),
            Image(
              image: AssetImage('/images/django.png'),
              height: 70,
              width: 70,
            )
          ],
        ),
      ),
    );
  }
}
