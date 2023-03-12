import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            child: Container(
              // regionhSV (145:86)
              padding: EdgeInsets.fromLTRB(4 * fem, 8 * fem, 4 * fem, 19 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupn8bpmSM (9QumVJCXoe8LdJWqdQN8BP)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 7 * fem, 12 * fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // icons8back5011U5s (151:134)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 117.5 * fem, 0 * fem),
                            width: 21 * fem,
                            height: 21 * fem,
                            child: Image.asset(
                              'assets/images/icons8-back-50-1-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          // profilekJH (149:101)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 112.5 * fem, 3 * fem),
                          child: Text(
                            'Profile',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1363636364 * ffem / fem,
                              letterSpacing: 0.44 * fem,
                            ),
                          ),
                        ),
                        Container(
                          // icons8settings501oXT (151:133)
                          width: 19 * fem,
                          height: 19 * fem,
                          child: Image.asset(
                            'assets/images/icons8-settings-50-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // captureremovebgpreview3517Y9 (149:104)
                    width: 114 * fem,
                    height: 104 * fem,
                    child: Image.asset(
                      'assets/images/capture-removebg-preview-35-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // marammejricjo (149:105)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                    child: Text(
                      'Maram Mejri',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 22 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.1363636364 * ffem / fem,
                        letterSpacing: 0.44 * fem,
                        color: Color(0xff010411),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupbany6us (9QumkYG8jciGCrW3ZybANy)
                    margin: EdgeInsets.fromLTRB(
                        104 * fem, 0 * fem, 104 * fem, 21 * fem),
                    width: double.infinity,
                    height: 42 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff3cb371),
                      borderRadius: BorderRadius.circular(30 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Edit Profile',
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
                  Container(
                    // line1Wyb (149:110)
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 9 * fem, 18 * fem),
                    width: double.infinity,
                    height: 1 * fem,
                    decoration: BoxDecoration(
                      color: Color(0x5b010411),
                    ),
                  ),
                  Container(
                    // autogroupb2rbpzH (9QumyT4Hik55Ar27fKB2RB)
                    margin: EdgeInsets.fromLTRB(
                        8 * fem, 0 * fem, 10 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 21 * fem, 21 * fem, 40 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x4f0eca0b),
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup81nusSm (9QunKGpbFxVYP6zmNp81nu)
                          margin: EdgeInsets.fromLTRB(
                              8 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: 292 * fem,
                          height: 66 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // nameN8d (151:115)
                                left: 18.5 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 63 * fem,
                                    height: 25 * fem,
                                    child: Text(
                                      'Name',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.25 * ffem / fem,
                                        letterSpacing: 0.4 * fem,
                                        color: Color(0xff010411),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle26Df3 (151:117)
                                left: 0 * fem,
                                top: 24 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 292 * fem,
                                    height: 42 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30 * fem),
                                        color: Color(0xffe3fbd4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupz4fp6Tw (9Quna6jDme13zbFqhfZ4FP)
                          margin: EdgeInsets.fromLTRB(
                              6 * fem, 0 * fem, 0 * fem, 19 * fem),
                          width: 292 * fem,
                          height: 66 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // emailaddresszZK (151:118)
                                left: 16.5 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 149 * fem,
                                    height: 25 * fem,
                                    child: Text(
                                      'Email Address',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.25 * ffem / fem,
                                        letterSpacing: 0.4 * fem,
                                        color: Color(0xff010411),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle27EyT (151:119)
                                left: 0 * fem,
                                top: 24 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 292 * fem,
                                    height: 42 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30 * fem),
                                        color: Color(0xffe3fbd4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouptiqj83F (9Qunnm2nuPWpBLwS2NTiqj)
                          margin: EdgeInsets.fromLTRB(
                              6 * fem, 0 * fem, 2 * fem, 19 * fem),
                          width: double.infinity,
                          height: 66 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // passwordpwf (151:122)
                                left: 18.5 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 101 * fem,
                                    height: 25 * fem,
                                    child: Text(
                                      'Password',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.25 * ffem / fem,
                                        letterSpacing: 0.4 * fem,
                                        color: Color(0xff010411),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle2968V (151:123)
                                left: 0 * fem,
                                top: 24 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 292 * fem,
                                    height: 42 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30 * fem),
                                        color: Color(0xffe3fbd4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupnptmyi5 (9QunwkmoYwxYFw2fj8nptm)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 8 * fem, 14 * fem),
                          width: 292 * fem,
                          height: 66 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // phonenumbergcV (151:124)
                                left: 19.5 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 155 * fem,
                                    height: 25 * fem,
                                    child: Text(
                                      'Phone Number',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.25 * ffem / fem,
                                        letterSpacing: 0.4 * fem,
                                        color: Color(0xff010411),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle30Lww (151:125)
                                left: 0 * fem,
                                top: 24 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 292 * fem,
                                    height: 42 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30 * fem),
                                        color: Color(0xffe3fbd4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // address2Zs (151:126)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 180 * fem, 1 * fem),
                          child: Text(
                            'Address',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.25 * ffem / fem,
                              letterSpacing: 0.4 * fem,
                              color: Color(0xff010411),
                            ),
                          ),
                        ),
                        Container(
                          // rectangle31er9 (151:127)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 8 * fem, 30 * fem),
                          width: 292 * fem,
                          height: 42 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30 * fem),
                            color: Color(0xffe3fbd4),
                          ),
                        ),
                        Container(
                          // autogrouppypmGcd (9Quo514jEsUvsrGZ3UPYpm)
                          margin: EdgeInsets.fromLTRB(
                              219 * fem, 0 * fem, 0 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              13.5 * fem, 0 * fem, 12.5 * fem, 0 * fem),
                          height: 26 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff030b31),
                            borderRadius: BorderRadius.circular(30 * fem),
                          ),
                          child: Text(
                            'Logout',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.7857142857 * ffem / fem,
                              letterSpacing: 0.28 * fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
