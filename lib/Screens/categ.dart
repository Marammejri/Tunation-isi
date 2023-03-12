import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/widgets/Navbar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils.dart';
import 'Education1.dart';
import '../widgets/bottomnaviagtionbar.dart';
import 'money.dart';
import '../widgets/Navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Categ extends StatelessWidget {
  const Categ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    width: double.infinity,
                    child: Container(
                      width: double.infinity,
                      child: Container(
                        // categCvy (141:12)
                        padding: EdgeInsets.fromLTRB(
                            5 * fem, 1 * fem, 0 * fem, 84 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupfrdksnD (CjTmamcHTPQnthJAR8FrDK)
                              margin: EdgeInsets.fromLTRB(
                                  13.5 * fem, 0 * fem, 0 * fem, 14 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // autogroupfjh7y4Z (CjTmn1nYmLTwzRui3afjH7)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 147.5 * fem, 0 * fem),
                                    width: 113 * fem,
                                    height: 70 * fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // helloG3f (143:17)
                                          left: 2.5 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 60 * fem,
                                              height: 30 * fem,
                                              child: Text(
                                                'Hello!',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0xff258d53),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // maram6gu (143:18)
                                          left: 0 * fem,
                                          top: 25 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 113 * fem,
                                              height: 45 * fem,
                                              child: Text(
                                                'Maram',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 30 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0xff010411),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed("/profile");
                                    },
                                    child: Container(
                                      // autogroupg2n1kWZ (CjTmwG29GGkirFqRWyg2n1)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 10 * fem, 0 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(16 * fem,
                                          16 * fem, 17 * fem, 15 * fem),
                                      width: 80 * fem,
                                      height: 92 * fem,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/ellipse-2.png',
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        // captureremovebgpreview242cof (143:15)
                                        child: SizedBox(
                                          width: 49 * fem,
                                          height: 47 * fem,
                                          child: Image.asset(
                                            'assets/images/capture-removebg-preview-24-2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupweopJwP (CjTnE5sSay2chenKztWeoP)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 6 * fem, 8 * fem),
                              width: 349 * fem,
                              height: 216 * fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // rectangle16atu (143:12)
                                    left: 0 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 349 * fem,
                                        height: 184 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30 * fem),
                                            gradient: LinearGradient(
                                              begin: Alignment(0, -1),
                                              end: Alignment(0, 1),
                                              colors: <Color>[
                                                Color(0xff3cb371),
                                                Color(0xff95e2ce)
                                              ],
                                              stops: <double>[0, 1],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // captureremovebgpreview232oFs (143:13)
                                    left: 177 * fem,
                                    top: 48 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 172 * fem,
                                        height: 168 * fem,
                                        child: Image.asset(
                                          'assets/images/capture-removebg-preview-23-2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // rectangle17TbK (143:14)
                                    left: 25 * fem,
                                    top: 110 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 128 * fem,
                                        height: 45 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15 * fem),
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // werisebyliftingothersY6y (143:16)
                                    left: 21 * fem,
                                    top: 14 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 160 * fem,
                                        height: 75 * fem,
                                        child: Text(
                                          'We rise by lifting others',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 25 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // donatenowPdP (143:19)
                                    left: 31 * fem,
                                    top: 117 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 112 * fem,
                                        height: 27 * fem,
                                        child: Text(
                                          'Donate Now',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff010411),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // categories2RT (143:20)
                                    left: 16.5 * fem,
                                    top: 190 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 86 * fem,
                                        height: 23 * fem,
                                        child: Text(
                                          ' Categories',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff356039),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroups3qx6RK (CjTnZA9za3uwaCFYQVS3qX)
                              margin: EdgeInsets.fromLTRB(
                                  3.91 * fem, 0 * fem, 0 * fem, 17 * fem),
                              width: 350.91 * fem,
                              height: 177 * fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // rectangle5zFo (141:13)
                                    left: 0 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 161 * fem,
                                        height: 170 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20 * fem),
                                            color: Color(0xe23cb371),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // rectangle65HF (141:15)
                                    left: 176 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 158 * fem,
                                        height: 177 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20 * fem),
                                            color: Color(0xe23cb371),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // foodA3o (141:16)
                                    left: 48 * fem,
                                    top: 144 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 50 * fem,
                                        height: 30 * fem,
                                        child: Text(
                                          'Food',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 20 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffe3fbd4),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // educationdi5 (141:20)
                                    left: 207 * fem,
                                    top: 144 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 103 * fem,
                                        height: 30 * fem,
                                        child: Text(
                                          'Education',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 20 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffe3fbd4),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // undrawshoppingappflsjremovebgp (141:21)
                                    left: 11 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                          width: 150 * fem,
                                          height: 150 * fem,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed("/region");
                                            },
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: Image.asset(
                                              'assets/images/undrawshoppingappflsj-removebg-preview-1.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                    ),
                                  ),
                                  Positioned(
                                    // undraweducationf8ruremovebgpre (141:22)
                                    left: 158 * fem,
                                    top: 11 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 192.91 * fem,
                                        height: 144 * fem,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed("/educ");
                                          },
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Image.asset(
                                            'assets/images/undraweducationf8ru-removebg-preview-1.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupggnhS3F (CjTnq9hM4A31VTkBexggNh)
                              margin: EdgeInsets.fromLTRB(
                                  4 * fem, 0 * fem, 17 * fem, 0 * fem),
                              width: double.infinity,
                              height: 177 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed("/home");
                                    },
                                    child: Container(
                                      // autogroupiadbX4h (CjTo19Qh7Drvh1BLSFiaDB)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                      width: 161 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xe23cb371),
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // homesuppliesonu (141:17)
                                            left: 9 * fem,
                                            top: 139 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 145 * fem,
                                                height: 29 * fem,
                                                child: Text(
                                                  'Home Supplies',
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    fontSize: 19 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5 * ffem / fem,
                                                    color: Color(0xffe3fbd4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // undrawhomecinemal7ylremovebgpr (141:23)
                                            left: 18 * fem,
                                            top: 3 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 121.64 * fem,
                                                height: 144 * fem,
                                                child: Image.asset(
                                                  'assets/images/undrawhomecinemal7yl-removebg-preview-1.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed("/btn");
                                    },
                                    child: Container(
                                      // autogroupshhom7T (CjTo8UXp5bzzuLN3g8shHo)
                                      width: 161 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xe23cb371),
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // money3am (141:19)
                                            left: 49.5 * fem,
                                            top: 139 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 69 * fem,
                                                height: 30 * fem,
                                                child: Text(
                                                  'Money',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5 * ffem / fem,
                                                    color: Color(0xffe3fbd4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // undrawbitcoinp2pre1xqaremovebg (141:24)
                                            left: 26 * fem,
                                            top: 3 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 121.11 * fem,
                                                height: 144 * fem,
                                                child: Image.asset(
                                                  'assets/images/undrawbitcoinp2pre1xqa-removebg-preview-1.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )))));
  }
}
