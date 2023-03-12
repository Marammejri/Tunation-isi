import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Screens/test.dart';
import '../utils.dart';

class Splach extends StatefulWidget {
  const Splach({Key? key}) : super(key: key);
  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Test())));
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: TextButton(
              // firstpageAwP (145:16)
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouphpa9q1w (9Qug9x5ysMD11yk6xZhpA9)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 48 * fem),
                      width: double.infinity,
                      height: 255 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // ellipse3hZw (145:18)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 160 * fem,
                                height: 150 * fem,
                                child: Image.asset(
                                  'assets/images/ellipse-3.png',
                                  width: 160 * fem,
                                  height: 150 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // ellipse4kHK (145:19)
                            left: 274 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 160 * fem,
                                height: 150 * fem,
                                child: Image.asset(
                                  'assets/images/ellipse-4.png',
                                  width: 160 * fem,
                                  height: 150 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // ellipse51j3 (145:20)
                            left: 4 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 111 * fem,
                                height: 106 * fem,
                                child: Image.asset(
                                  'assets/images/ellipse-5.png',
                                  width: 111 * fem,
                                  height: 106 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // ellipse6HRf (145:21)
                            left: 249 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 111 * fem,
                                height: 106 * fem,
                                child: Image.asset(
                                  'assets/images/ellipse-6.png',
                                  width: 111 * fem,
                                  height: 106 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // welcometoaQm (151:135)
                            left: 78.5 * fem,
                            top: 165 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 203 * fem,
                                height: 25 * fem,
                                child: Text(
                                  'Welcome To ',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 30 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 0.8333333333 * ffem / fem,
                                    letterSpacing: 0.6 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // ellipse7csF (151:138)
                            left: 0 * fem,
                            top: 69 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 101 * fem,
                                height: 102 * fem,
                                child: Image.asset(
                                  'assets/images/ellipse-7.png',
                                  width: 101 * fem,
                                  height: 102 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // ellipse8t45 (151:139)
                            left: 327 * fem,
                            top: 69 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 101 * fem,
                                height: 102 * fem,
                                child: Image.asset(
                                  'assets/images/ellipse-8.png',
                                  width: 101 * fem,
                                  height: 102 * fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // tunationAXP (145:28)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 38 * fem),
                      child: Text(
                        'Tunation',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 60 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 0.4166666667 * ffem / fem,
                          letterSpacing: 1.2 * fem,
                        ),
                      ),
                    ),
                    Container(
                      // autogroupxsed46y (9QugP7NihrQrmD6epXxseD)
                      margin: EdgeInsets.fromLTRB(
                          87 * fem, 0 * fem, 86 * fem, 46 * fem),
                      width: double.infinity,
                      height: 63 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff3cb371),
                        borderRadius: BorderRadius.circular(60 * fem),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // discoveryourappvey (145:25)
                            left: 19 * fem,
                            top: 8 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 148 * fem,
                                height: 50 * fem,
                                child: Text(
                                  'Discover Your App',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.25 * ffem / fem,
                                    letterSpacing: 0.4 * fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // icons8forward3019Gq (145:23)
                            left: 118 * fem,
                            top: 40 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 20 * fem,
                                height: 15 * fem,
                                child: Image.asset(
                                  'assets/images/icons8-forward-30-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // icons8forward3021Zw (145:24)
                            left: 124 * fem,
                            top: 40 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 20 * fem,
                                height: 15 * fem,
                                child: Image.asset(
                                  'assets/images/icons8-forward-30-2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // captureremovebgpreview331JJ9 (145:17)
                      width: 384 * fem,
                      height: 432 * fem,
                      child: Image.asset(
                        'assets/images/capture-removebg-preview-33-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
