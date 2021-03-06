import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
  final _flexHeaderGlobalKey = GlobalKey();
  final _headerGlobalKey = GlobalKey();
  final _aboutGlobaleKey = GlobalKey();
  final _portfolioGlobalKey = GlobalKey();
  final _contactUsGlobaleKey = GlobalKey();
  final _footerGlobalKey = GlobalKey();
  final _areasOfInterestGlobalKey = GlobalKey();
  final _skillsLibrariesGlobalKey = GlobalKey();
  final _librariesGlobalKey = GlobalKey();

  final _scrollController = ScrollController();

  final _fabStream = StreamController<bool>();

  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _fabStream.sink.add(_scrollController.offset > 500);
    });
  }

  Widget _buildFab() {
    return StreamBuilder<bool>(
      initialData: false,
      stream: _fabStream.stream,
      builder: (_, data) {
        bool showFab = data.hasData && data.data == true;
        return AnimatedOpacity(
          opacity: showFab ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: FloatingActionButton(
            backgroundColor: kButtonColor,
            onPressed: showFab
                ? () => _scrollController.animateTo(0,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn)
                : null, // make sure user cannot click when button hidden
            mini: true,
            child: Icon(FontAwesomeIcons.arrowUp),
          ),
        );
      },
    );
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
      floatingActionButton: _buildFab(),
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
              titleSpacing: 0,
              toolbarHeight: 65,
              pinned: true,
              elevation: 10.0,
              floating: true,
              backgroundColor: Colors.black,
              expandedHeight: MediaQuery.of(context).size.height * 0.9,
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
                    'assets/images/header_bg.jpg',
                    fit: BoxFit.cover,
                    // key: _headerKey,
                  ),
                ),

                title: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(0,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " < ",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Franklin",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " Osei",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " /",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ">",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                "\n\n\tMachine Learning Engineer\n\tMobile Developer",
                            style: GoogleFonts.poppins(
                              color: kWhiteColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "\n\n\n\n",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                titlePadding:
                    EdgeInsets.only(bottom: 15.0, top: 10.0, left: 120.0),
              ),
              actions: [
                Row(
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        Scrollable?.ensureVisible(
                            _aboutGlobaleKey.currentContext!,
                            duration: Duration(seconds: 3),
                            curve: Curves.fastLinearToSlowEaseIn);
                      },
                      highlightColor: Colors.white60,
                      focusColor: kButtonColor,
                      child: Text(
                        'About',
                        style: TextStyle(
                            color: kWhiteColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Scrollable?.ensureVisible(
                            _portfolioGlobalKey.currentContext!,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn);
                      },
                      highlightColor: Colors.white60,
                      child: Text(
                        'Portfolio',
                        style: TextStyle(
                            color: kWhiteColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Scrollable?.ensureVisible(
                            _contactUsGlobaleKey.currentContext!,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn);
                      },
                      highlightColor: Colors.white60,
                      child: Text(
                        'Contact Me',
                        style: TextStyle(
                            color: kWhiteColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/portfolio');
                      },
                      highlightColor: Colors.white60,
                      child: Text(
                        'All Projects',
                        style: TextStyle(
                            color: kWhiteColor, fontWeight: FontWeight.bold),
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
                        side: BorderSide(color: kButtonColor),
                      ),
                      child: Text(
                        'Resume',
                        style: TextStyle(
                            color: kButtonColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    )
                  ],
                )
              ]),
          ..._slivers(),
        ],
      ),
    );
  }

  Widget _buildTablet(
      BuildContext context, ScrollController controller, GlobalKey _headerKey) {
    return Scaffold(
      floatingActionButton: _buildFab(),
      drawer: Drawer(
        elevation: 5.0,
        child: Column(children: [
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.90,
          //     child: DrawerHeader(
          //       // decoration: BoxDecoration(
          //       //     image: DecorationImage(
          //       //         image: AssetImage("images/drawer_header.jpg"),
          //       //         fit: BoxFit.cover)),
          //       child: Text(""),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 70,
          ),
          Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.28,
                child: ListView(children: [
                  MaterialButton(
                    highlightColor: kButtonHighlightColor,
                    elevation: 10.0,
                    onPressed: () {
                      Scrollable?.ensureVisible(
                          _aboutGlobaleKey.currentContext!,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'About',
                      style: TextStyle(color: kWhiteColor),
                    ),
                    height: 60.0,
                    padding: EdgeInsets.all(10),
                    color: kButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    highlightColor: kButtonHighlightColor,
                    elevation: 10.0,
                    onPressed: () {
                      Scrollable?.ensureVisible(
                          _portfolioGlobalKey.currentContext!,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                      Navigator.of(context).pop();
                    },
                    child:
                        Text('Portfolio', style: TextStyle(color: kWhiteColor)),
                    height: 60.0,
                    padding: EdgeInsets.all(10),
                    color: kButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    highlightColor: kButtonHighlightColor,
                    elevation: 10.0,
                    onPressed: () {
                      Scrollable?.ensureVisible(
                          _contactUsGlobaleKey.currentContext!,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                      Navigator.of(context).pop();
                    },
                    child: Text('Contact Me',
                        style: TextStyle(color: kWhiteColor)),
                    height: 60.0,
                    padding: EdgeInsets.all(10),
                    color: kButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    elevation: 10.0,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child:
                        Text('Resume', style: TextStyle(color: kButtonColor)),
                    height: 60.0,
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: kButtonColor),
                    ),
                  ),
                ]),
              )),
        ]),
      ),
      body: SafeArea(
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverAppBar(
              titleSpacing: 0,
              toolbarHeight: 60,
              pinned: true,
              elevation: 10.0,
              // floating: true,
              backgroundColor: kHeaderColor,
              expandedHeight: MediaQuery.of(context).size.height * 0.90,
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
                    'assets/images/header_bg.jpg',
                    fit: BoxFit.cover,
                    key: _headerKey,
                  ),
                ),

                title: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(0,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " < ",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Franklin",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " Osei",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " /",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ">",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                "\n\n\tMachine Learning Engineer\n\tMobile Developer",
                            style: GoogleFonts.poppins(
                              color: kWhiteColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "\n\n\n",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                titlePadding: EdgeInsets.only(
                    bottom: 10.0,
                    top: 10.0,
                    left: MediaQuery.of(context).size.width * 0.25),
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
      ),
    );
  }

  Widget _buildMobile(
      BuildContext context, ScrollController controller, GlobalKey _headerKey) {
    return Scaffold(
      floatingActionButton: _buildFab(),
      drawer: Drawer(
        elevation: 5.0,
        child: Column(children: [
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * 0.85,
          //     child: DrawerHeader(
          //       // decoration: BoxDecoration(
          //       //     image: DecorationImage(
          //       //         image: AssetImage("images/drawer_header.jpg"),
          //       //         fit: BoxFit.cover)),
          //       child: Text(""),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 70,
          ),
          Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.70,
                child: ListView(children: [
                  MaterialButton(
                    highlightColor: Colors.blue,
                    elevation: 10.0,
                    onPressed: () {
                      Scrollable?.ensureVisible(
                          _aboutGlobaleKey.currentContext!,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                      Navigator.of(context).pop();
                    },
                    child: Text('About', style: TextStyle(color: kWhiteColor)),
                    height: 60.0,
                    padding: EdgeInsets.all(10),
                    color: kButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    highlightColor: kButtonHighlightColor,
                    elevation: 10.0,
                    onPressed: () {
                      Scrollable?.ensureVisible(
                          _portfolioGlobalKey.currentContext!,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                      Navigator.of(context).pop();
                    },
                    child:
                        Text('Portfolio', style: TextStyle(color: kWhiteColor)),
                    height: 60.0,
                    padding: EdgeInsets.all(10),
                    color: kButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    highlightColor: Colors.blue,
                    elevation: 10.0,
                    onPressed: () {
                      Scrollable?.ensureVisible(
                          _contactUsGlobaleKey.currentContext!,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                      Navigator.of(context).pop();
                    },
                    child: Text('Contact Me',
                        style: TextStyle(color: kWhiteColor)),
                    height: 60.0,
                    padding: EdgeInsets.all(10),
                    color: kButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    elevation: 10.0,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child:
                        Text('Resume', style: TextStyle(color: kButtonColor)),
                    height: 60.0,
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: kButtonColor),
                    ),
                  ),
                ]),
              )),
        ]),
      ),
      body: SafeArea(
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverAppBar(
              titleSpacing: 2.0,
              toolbarHeight: 50,
              pinned: true,
              elevation: 10.0,
              // floating: true,
              backgroundColor: kHeaderColor,
              expandedHeight: MediaQuery.of(context).size.height,
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
                    'assets/images/header_bg.jpg',
                    fit: BoxFit.cover,
                    key: _headerKey,
                  ),
                ),

                title: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(0,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " < ",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Franklin",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " Osei",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " /",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ">",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // TextSpan(text: '\n\t\t|\t          |'),
                          TextSpan(
                            text:
                                "\n\n\n\tMachine Learning Engineer\n Mobile Developer",
                            style: GoogleFonts.poppins(
                              color: kWhiteColor,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "\n\n\n\n",
                            style: GoogleFonts.poppins(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                centerTitle: true,
                titlePadding: EdgeInsets.only(
                    bottom: 10.0,
                    top: MediaQuery.of(context).size.width * 0.05,
                    left: MediaQuery.of(context).size.width * 0.05),
              ),
            ),
            ..._slivers(),
          ],
        ),
      ),
    );
  }

  _slivers() => [
        SliverToBoxAdapter(
          key: _portfolioGlobalKey,
          child: PortfolioSection(),
        ),
        SliverToBoxAdapter(
          key: _areasOfInterestGlobalKey,
          child: AreasOfInterest(),
        ),
        SliverToBoxAdapter(
          key: _skillsLibrariesGlobalKey,
          child: SkillsLibrary(),
        ),
        SliverToBoxAdapter(
          key: _librariesGlobalKey,
          child: Libraries(),
        ),
        SliverToBoxAdapter(
          key: _aboutGlobaleKey,
          child: About(),
        ),
        SliverToBoxAdapter(
          key: _contactUsGlobaleKey,
          child: Contact(),
        ),
        SliverToBoxAdapter(
          key: _footerGlobalKey,
          child: Footer(),
        ),
      ];
}
