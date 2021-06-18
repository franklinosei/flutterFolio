import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/state/state_manager.dart';
import 'package:portfolio/utilities/responsive_widget.dart';

class PortfolioSection extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<Project>> projects = watch(projectStateFuture);

    return ResponsiveWidget(
        desktopScreen: _buildDesktopScreen(projects),
        tabletScreen: _buildTabletScreen(),
        mobileScreen: _buildMobileScreen());
  }

  Widget _buildDesktopScreen(AsyncValue projects) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Text(
          'Hello! Glad to see you here. This is a collection of some of my favorite projects.',
          style: TextStyle(color: kTextColor, fontSize: 25),
        ),
      ),
      projects.when(data: (project) {
        List<Widget> widgetList = [];

        for (var i = 0; i < project.length; i++) {
          widgetList.add(Card(
            elevation: 10,
            child: Column(
              children: [
                Image(
                  image: NetworkImage(
                      'https://unsplash.com/photos/EzYq1HOl5_8/download?force=true&w=640'),
                )
              ],
            ),
          ));
        }

        return Wrap(
          spacing: 20,
          children: widgetList,
        );
      }, loading: () {
        return CircularProgressIndicator();
      }, error: (err, _) {
        return Text('An error occurred');
      })
    ]);
  }

  Widget _buildTabletScreen() {
    return Text('Tablet');
  }

  Widget _buildMobileScreen() {
    return Text('Mobile');
  }
}
