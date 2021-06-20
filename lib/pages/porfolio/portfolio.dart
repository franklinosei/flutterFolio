import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';

class Portfolio extends StatefulWidget {
  Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // controller: controller,
        slivers: [
          SliverAppBar(
              titleSpacing: 0,
              toolbarHeight: 65,
              pinned: true,
              elevation: 10.0,
              floating: true,
              backgroundColor: Colors.black,
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
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
                    // key: _headerKey,
                  ),
                ),

                title: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " < ",
                            style: GoogleFonts.oswald(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "F",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "O",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " /",
                            style: GoogleFonts.oswald(
                              color: kButtonColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ">",
                            style: GoogleFonts.oswald(
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
                        Navigator.pop(context);
                      },
                      highlightColor: Colors.white60,
                      child: Text(
                        'Home',
                        style: TextStyle(
                            color: kWhiteColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    // MaterialButton(
                    //   onPressed: () {},
                    //   highlightColor: Colors.white60,
                    //   child: Text(
                    //     'Portfolio',
                    //     style: TextStyle(
                    //         color: kWhiteColor, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    // MaterialButton(
                    //   onPressed: () {},
                    //   highlightColor: Colors.white60,
                    //   child: Text(
                    //     'Contact Me',
                    //     style: TextStyle(
                    //         color: kWhiteColor, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    // MaterialButton(
                    //   onPressed: () {},
                    //   highlightColor: Colors.white60,
                    //   // color: Colors.orange,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(18.0),
                    //     side: BorderSide(color: kButtonColor),
                    //   ),
                    //   child: Text(
                    //     'Resume',
                    //     style: TextStyle(
                    //         color: kButtonColor, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 90,
                    // )
                  ],
                )
              ]),
          // ..._slivers(),
        ],
      ),
    );
  }
}
