import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/Screens/Login.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';
import '../utils.dart';

class Test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Container(
          // welcomeNnR (2:6)
          padding: EdgeInsets.fromLTRB(0 * fem, 60 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffe2fad4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // removebgpreview1dkH (10:10)
                width: 350 * fem,
                height: 376 * fem,
                child: Image.asset(
                  'assets/images/removebg-preview-1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                // autogroup63gygyT (YC6vW8zYg4WzxGGvkN63gy)

                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                  color: Color(0xff010411),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100 * fem),
                      topRight: Radius.circular(100 * fem)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30 * fem),
                    Container(
                      // doinggoodtodaywillbemultiplied (15:8)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 325 * fem,
                      ),
                      child: Text(
                        'Doing Good Today Will be Multiplied In The Future ',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    SizedBox(height: 15 * fem),
                    Container(
                      // letssetasideforthepeopleoutthe (15:12)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 41 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 302 * fem,
                      ),
                      child: Text(
                        'Let’s set aside for the people out there who are hit by poverty',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 18 * ffem,
                          height: 1.3888888889 * ffem / fem,
                          letterSpacing: 0.36 * fem,
                          color: Color(0xfffffafa),
                        ),
                      ),
                    ),
                    SizedBox(height: 30 * fem),
                    Container(
                      // autogroupzihkumf (YC6vioJ7op2m91xX54ziHK)
                      margin: EdgeInsets.fromLTRB(
                          2.44 * fem, 0 * fem, 3.49 * fem, 0 * fem),
                      width: double.infinity,
                      height: 66 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff3cb371),
                        borderRadius: BorderRadius.circular(25 * fem),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                        child: Center(
                          child: Text(
                            'Let’s Get Started',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1363636364 * ffem / fem,
                              letterSpacing: 0.44 * fem,
                              color: Color(0xffffffff),
                            ),
                          ),
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
    )));
  }
}
