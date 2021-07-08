import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utilities/responsive_widget.dart';

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String message = '';

  final FocusNode _fNameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _messageFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        desktopScreen: _desktopScreen(),
        tabletScreen: _tabletScreen(),
        mobileScreen: _mobileScreen());
  }

  Widget _desktopScreen() {
    return Column(
      children: [
        Text(
          'Contact Me',
          style: TextStyle(fontSize: 30),
        ),
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/contacts.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.25,
              child: Container(
                // alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.next,
                          focusNode: _fNameFocus,
                          onFieldSubmitted: (term) {
                            _fieldFocusChange(
                                context, _fNameFocus, _emailFocus);
                          },
                          style: TextStyle(color: kWhiteColor),
                          decoration:
                              textInputDecoration.copyWith(labelText: 'Name*'),
                          validator: (val) =>
                              val!.isEmpty ? "Please enter first name" : null,
                          onChanged: (val) {
                            setState(() {
                              name = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.next,
                          focusNode: _emailFocus,
                          onFieldSubmitted: (term) {
                            _fieldFocusChange(
                                context, _emailFocus, _messageFocus);
                          },
                          style: TextStyle(color: Colors.black),
                          decoration:
                              textInputDecoration.copyWith(labelText: 'Email*'),
                          validator: (val) => val!.isEmpty
                              ? "Please enter your emaill address"
                              : null,
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLength: null,
                          maxLines: 5,
                          minLines: null,
                          enabled: true,
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.done,
                          focusNode: _messageFocus,
                          onChanged: (term) {
                            setState(() {
                              message = term;
                            });
                          },
                          style: TextStyle(color: Colors.black),
                          decoration: textInputDecoration.copyWith(
                              labelText: 'Message*'),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                            color: kButtonColor,
                            height: 50,
                            onPressed: () {},
                            elevation: 10,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send Message',
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 20,
                                    color: kWhiteColor,
                                  ),
                                ]))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _tabletScreen() {
    return Column(
      children: [
        Text(
          'Contact Me',
          style: TextStyle(fontSize: 30),
        ),
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/contacts.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.15,
              child: Container(
                // alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.next,
                          focusNode: _fNameFocus,
                          onFieldSubmitted: (term) {
                            _fieldFocusChange(
                                context, _fNameFocus, _emailFocus);
                          },
                          style: TextStyle(color: kWhiteColor),
                          decoration:
                              textInputDecoration.copyWith(labelText: 'Name*'),
                          validator: (val) =>
                              val!.isEmpty ? "Please enter first name" : null,
                          onChanged: (val) {
                            setState(() {
                              name = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.next,
                          focusNode: _emailFocus,
                          onFieldSubmitted: (term) {
                            _fieldFocusChange(
                                context, _emailFocus, _messageFocus);
                          },
                          style: TextStyle(color: Colors.black),
                          decoration:
                              textInputDecoration.copyWith(labelText: 'Email*'),
                          validator: (val) => val!.isEmpty
                              ? "Please enter your emaill address"
                              : null,
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLength: null,
                          maxLines: 5,
                          minLines: null,
                          enabled: true,
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.done,
                          focusNode: _messageFocus,
                          onChanged: (term) {
                            print(term);
                          },
                          style: TextStyle(color: Colors.black),
                          decoration: textInputDecoration.copyWith(
                              labelText: 'Message*'),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                            color: kButtonColor,
                            height: 50,
                            onPressed: () {},
                            elevation: 10,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send Message',
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 20,
                                    color: kWhiteColor,
                                  ),
                                ]))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _mobileScreen() {
    return Column(
      children: [
        Text(
          'Contact Me',
          style: TextStyle(fontSize: 30),
        ),
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/contacts.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Container(
                // alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Container(
                  padding:
                      EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 5),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.next,
                          focusNode: _fNameFocus,
                          onFieldSubmitted: (term) {
                            _fieldFocusChange(
                                context, _fNameFocus, _emailFocus);
                          },
                          style: TextStyle(color: kWhiteColor),
                          decoration:
                              textInputDecoration.copyWith(labelText: 'Name*'),
                          validator: (val) =>
                              val!.isEmpty ? "Please enter first name" : null,
                          onChanged: (val) {
                            setState(() {
                              name = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.next,
                          focusNode: _emailFocus,
                          onFieldSubmitted: (term) {
                            _fieldFocusChange(
                                context, _emailFocus, _messageFocus);
                          },
                          style: TextStyle(color: Colors.black),
                          decoration:
                              textInputDecoration.copyWith(labelText: 'Email*'),
                          validator: (val) => val!.isEmpty
                              ? "Please enter your emaill address"
                              : null,
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLength: null,
                          maxLines: 5,
                          minLines: null,
                          enabled: true,
                          cursorColor: kButtonColor,
                          textInputAction: TextInputAction.done,
                          focusNode: _messageFocus,
                          onChanged: (term) {
                            print(term);
                          },
                          style: TextStyle(color: Colors.black),
                          decoration: textInputDecoration.copyWith(
                              labelText: 'Message*'),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                            color: kButtonColor,
                            height: 50,
                            onPressed: () {},
                            elevation: 10,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send Message',
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 20,
                                    color: kWhiteColor,
                                  ),
                                ]))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void _fieldFocusChange(
    BuildContext context, FocusNode fNameFocus, FocusNode emailFocus) {}
