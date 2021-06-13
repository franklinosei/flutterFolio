import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/pages/home/components/about_section.dart';
import 'package:portfolio/pages/home/components/areas_of_interest.dart';
import 'package:portfolio/pages/home/components/contact.dart';
import 'package:portfolio/pages/home/components/footer.dart';
import 'package:portfolio/pages/home/components/libraries.dart';
import 'package:portfolio/pages/home/components/portfolio_section.dart';
import 'package:portfolio/pages/home/components/skillsLibrary.dart';
import 'package:portfolio/utilities/responsive_widget.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _headerGlobalKey = GlobalKey();
  final _aboutGlobaleKey = GlobalKey();
  final _portfolioGlobalKey = GlobalKey();
  final _contactUsGlobaleKey = GlobalKey();
  final _flexHeaderGlobalKey = GlobalKey();
  final _areasOfInterestGlobalKey = GlobalKey();
  final _skillsLibrariesGlobalKey = GlobalKey();
  final _LibrariesGlobalKey = GlobalKey();

  final _scrollController = ScrollController();

  final _fabStream = StreamController<bool>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _fabStream.sink.add(_scrollController.offset > 500);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen:
          _buildDesktop(context, _scrollController, _flexHeaderGlobalKey),
      tabletScreen:
          _buildTablet(context, _scrollController, _flexHeaderGlobalKey),
      mobileScreen:
          _buildMobile(context, _scrollController, _flexHeaderGlobalKey),
    );
  }

  @override
  void dispose() {
    _fabStream.close();
    super.dispose();
  }

  Widget _buildDesktop(
    BuildContext context,
    ScrollController controller,
    GlobalKey _headerKey,
  ) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
              titleSpacing: 0,
              toolbarHeight: 50,
              pinned: true,
              elevation: 10.0,
              floating: true,
              backgroundColor: kHeaderColor,
              expandedHeight: MediaQuery.of(context).size.height * 0.8,
              flexibleSpace: FlexibleSpaceBar(
                // key: _flexHeaderGlobalKey,
                background: DecoratedBox(
                  position: DecorationPosition.foreground,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black,
                        Colors.black87,
                        Colors.transparent
                      ],
                    ),
                  ),
                  child: Image.asset(
                    'images/header_bg.jpg',
                    fit: BoxFit.cover,
                    key: _headerKey,
                  ),
                ),

                title: Text('Franklin Osei\nAi Engineer || Data Scientist'),
                titlePadding:
                    EdgeInsets.only(bottom: 20.0, top: 10.0, left: 120.0),
              ),
              actions: [
                Row(
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      highlightColor: Colors.white60,
                      child: Text(
                        'About',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      highlightColor: Colors.white60,
                      child: Text(
                        'Portfolio',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      highlightColor: Colors.white60,
                      child: Text(
                        'Contact Me',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      highlightColor: Colors.white60,
                      // color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.orange),
                      ),
                      child: Text(
                        'Resume',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                )
              ]),
          ..._slivers(),
        ],
      ),
    );
  }

  List<Widget> _slivers() => [
        SliverToBoxAdapter(
          key: _portfolioGlobalKey,
          child: Portfolio(),
        ),
        SliverToBoxAdapter(
          key: _areasOfInterestGlobalKey,
          child: AreasOfInterest(),
        ),
        SliverToBoxAdapter(
          key: _LibrariesGlobalKey,
          child: Libraries(),
        ),
        SliverToBoxAdapter(
          key: _skillsLibrariesGlobalKey,
          child: SkillsLibrary(),
        ),
        SliverToBoxAdapter(
          key: _aboutGlobaleKey,
          child: About(),
        ),
        SliverToBoxAdapter(
          // key: _contactUsGlobaleKey,
          child: Contact(),
        ),
        SliverToBoxAdapter(
          child: Footer(),
        ),
      ];

  Widget _buildTablet(
      BuildContext context, ScrollController controller, GlobalKey _headerKey) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            toolbarHeight: 50,
            pinned: true,
            elevation: 10.0,
            floating: true,
            backgroundColor: kHeaderColor,
            expandedHeight: MediaQuery.of(context).size.height * 0.8,
            flexibleSpace: FlexibleSpaceBar(
              // key: _flexHeaderGlobalKey,
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black, Colors.black87, Colors.transparent],
                  ),
                ),
                child: Image.asset(
                  'images/header_bg.jpg',
                  fit: BoxFit.cover,
                  key: _headerKey,
                ),
              ),

              title: Text('Franklin Osei\nAi Engineer || Data Scientist'),
              titlePadding:
                  EdgeInsets.only(bottom: 20.0, top: 10.0, left: 120.0),
            ),
            // actions: [
            //   Row(
            //     children: <Widget>[
            //       MaterialButton(
            //         onPressed: () {},
            //       )
            //     ],
            //   )
            // ],
          ),
          ..._slivers(),
        ],
      ),
    );
  }

  Widget _buildMobile(
      BuildContext context, ScrollController controller, GlobalKey _headerKey) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            titleSpacing: 1.0,
            toolbarHeight: 50,
            pinned: true,
            elevation: 10.0,
            floating: true,
            backgroundColor: kHeaderColor,
            expandedHeight: MediaQuery.of(context).size.height * 0.8,
            flexibleSpace: FlexibleSpaceBar(
              // key: _flexHeaderGlobalKey,
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black, Colors.black87, Colors.transparent],
                  ),
                ),
                child: Image.asset(
                  'images/header_bg.jpg',
                  fit: BoxFit.cover,
                  key: _headerKey,
                ),
              ),

              title: Text('Franklin Osei\n\nAi Engineer || Data Scientist'),
              titlePadding:
                  EdgeInsets.only(bottom: 10.0, top: 10.0, left: 20.0),
            ),
          ),
          ..._slivers(),
        ],
      ),
    );
  }

  // void _scrollToHeader() {
  //   Scrollable.ensureVisible(
  //     _flexHeaderGlobalKey.currentContext,
  //     duration: const Duration(seconds: 1),
  //   );
  // }

}
