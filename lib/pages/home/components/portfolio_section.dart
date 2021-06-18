import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/state/state_manager.dart';
import 'package:portfolio/utilities/responsive_widget.dart';

class PortfolioSection extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<Project>> projects = watch(projectStateFuture);

    return ResponsiveWidget(
        desktopScreen: _buildDesktopScreen(projects, context),
        tabletScreen: _buildTabletScreen(projects, context),
        mobileScreen: _buildMobileScreen(projects, context));
  }

  Widget _buildDesktopScreen(AsyncValue projects, BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding:
            const EdgeInsets.only(left: 70, right: 70, top: 70, bottom: 30),
        child: Text(
          'Hello! Glad to see you here. Here is a collection of some of my favorite projects.',
          style: TextStyle(color: kTextColor, fontSize: 25),
        ),
      ),
      projects.when(data: (project) {
        List<Widget> widgetList = [];

        for (var i = 0; i < project.length; i++) {
          if (i < 4) {
            widgetList.add(
              Container(
                // padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.4,
                child: Card(
                  elevation: 10,
                  semanticContainer: true,
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage('${project[i].imageUrl}'),
                        // width: MediaQuery.of(context).size.width * 0.37,
                        // height: MediaQuery.of(context).size.width * 0.26,
                        fit: BoxFit.fill,
                      ),
                      ListTile(
                        // hoverColor: kWhiteColor,
                        onTap: () {
                          html.window
                              .open('${project[i].projectUrl}', "_blank");
                        },
                        title: Text('${project[i].title}'),
                        subtitle: Text('${project[i].description}'),
                        trailing: project[i].onGithub
                            ? IconButton(
                                onPressed: () {
                                  html.window.open(
                                      '${project[i].githubUrl}', "_blank");
                                },
                                icon: Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.black,
                                ))
                            : null,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        }

        return Column(
          children: [
            Wrap(
              spacing: 20,
              children: widgetList,
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(20.0))),
              height: 0,
              elevation: 10,
              hoverColor: kWhiteColor,
              // color: kButtonColor,
              onPressed: () {},
              child: Text(
                'View more Projects',
                style: TextStyle(color: kButtonColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Divider(
            //   height: 10,
            //   color: Colors.black,
            // ),
            // SizedBox(
            //   height: 10,
            // )
          ],
        );
      }, loading: () {
        return CircularProgressIndicator();
      }, error: (err, _) {
        return Text('An error occurred');
      })
    ]);
  }

  Widget _buildTabletScreen(AsyncValue projects, BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding:
            const EdgeInsets.only(left: 70, right: 70, top: 70, bottom: 30),
        child: Text(
          'Hello! Glad to see you here. Here is a collection of some of my favorite projects.',
          style: TextStyle(color: kTextColor, fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      projects.when(data: (project) {
        List<Widget> widgetList = [];

        for (var i = 0; i < project.length; i++) {
          if (i < 4) {
            widgetList.add(
              Container(
                // padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.4,
                child: Card(
                  elevation: 10,
                  semanticContainer: true,
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage('${project[i].imageUrl}'),
                        // width: MediaQuery.of(context).size.width * 0.37,
                        // height: MediaQuery.of(context).size.width * 0.26,
                        fit: BoxFit.fill,
                      ),
                      ListTile(
                        // hoverColor: kWhiteColor,
                        onTap: () {
                          html.window
                              .open('${project[i].projectUrl}', "_blank");
                        },
                        title: Text('${project[i].title}'),
                        subtitle: Text('${project[i].description}'),
                        trailing: project[i].onGithub
                            ? IconButton(
                                onPressed: () {
                                  html.window.open(
                                      '${project[i].githubUrl}', "_blank");
                                },
                                icon: Icon(FontAwesomeIcons.github),
                                color: Colors.black)
                            : null,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        }

        return Column(
          children: [
            Wrap(
              spacing: 20,
              children: widgetList,
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(20.0))),
              height: 0,
              elevation: 10,
              hoverColor: kWhiteColor,
              // color: kButtonColor,
              onPressed: () {},
              child: Text(
                'View more Projects',
                style: TextStyle(color: kButtonColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Divider(
            //   height: 10,
            //   color: Colors.black,
            // ),
            // SizedBox(
            //   height: 10,
            // )
          ],
        );
      }, loading: () {
        return CircularProgressIndicator();
      }, error: (err, _) {
        return Text('An error occurred');
      })
    ]);
  }

  Widget _buildMobileScreen(AsyncValue projects, BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 30),
        child: Text(
          'Hello! Glad to see you here. Here is a collection of some of my favorite projects.',
          style: TextStyle(color: kTextColor, fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
      projects.when(data: (project) {
        List<Widget> widgetList = [];

        for (var i = 0; i < project.length; i++) {
          if (i < 4) {
            widgetList.add(
              Container(
                // padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.98,
                child: Card(
                  elevation: 10,
                  semanticContainer: true,
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage('${project[i].imageUrl}'),
                        // width: MediaQuery.of(context).size.width * 0.37,
                        // height: MediaQuery.of(context).size.width * 0.26,
                        fit: BoxFit.fill,
                      ),
                      ListTile(
                        // hoverColor: kWhiteColor,
                        onTap: () {
                          html.window
                              .open('${project[i].projectUrl}', "_blank");
                        },
                        title: Text('${project[i].title}'),
                        subtitle: Text(
                          '${project[i].description}',
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: project[i].onGithub
                            ? IconButton(
                                onPressed: () {
                                  html.window.open(
                                      '${project[i].githubUrl}', "_blank");
                                },
                                icon: Icon(FontAwesomeIcons.github),
                                color: Colors.black,
                              )
                            : null,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        }

        return Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // spacing: 20,
              children: widgetList,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(20.0))),
              height: 0,
              elevation: 10,
              hoverColor: kWhiteColor,
              // color: kButtonColor,
              onPressed: () {},
              child: Text(
                'View more Projects',
                style: TextStyle(color: kButtonColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Divider(
            //   height: 10,
            //   color: Colors.black,
            // ),
            // SizedBox(
            //   height: 10,
            // )
          ],
        );
      }, loading: () {
        return CircularProgressIndicator();
      }, error: (err, _) {
        return Text('An error occurred');
      })
    ]);
  }
}
