import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Homesup extends StatefulWidget {
  const Homesup({Key? key}) : super(key: key);
  @override
  State<Homesup> createState() => _HomesupState();
}

class _HomesupState extends State<Homesup> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Container(
            // homeeBF (81:63)
            width: double.infinity,
            height: 800 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // rectangle92Bo (81:64)
                  left: 0 * fem,
                  top: 194 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 360 * fem,
                      height: 672 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60 * fem),
                          color: Color(0x303cb371),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle5VLH (81:65)
                  left: 11 * fem,
                  top: 287 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 161 * fem,
                      height: 199 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20 * fem),
                          color: Color(0xe23cb371),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // furnitureyWM (81:66)
                  left: 33.5 * fem,
                  top: 417 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 116 * fem,
                      height: 38 * fem,
                      child: Text(
                        'Furniture',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffe3fbd4),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle10Rt9 (81:67)
                  left: 189 * fem,
                  top: 287 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 161 * fem,
                      height: 199 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20 * fem),
                          color: Color(0xe23cb371),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle11uYR (81:68)
                  left: 11 * fem,
                  top: 530 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 161 * fem,
                      height: 199 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20 * fem),
                          color: Color(0xff3cb371),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle12C1j (81:69)
                  left: 189 * fem,
                  top: 530 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 161 * fem,
                      height: 199 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20 * fem),
                            color: Color(0xe23cb371),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // homeappliance43w (81:72)
                  left: 207 * fem,
                  top: 403 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 130 * fem,
                      height: 75 * fem,
                      child: Text(
                        'Home Appliance',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffe3fbd4),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // clothesdFT (81:73)
                  left: 38 * fem,
                  top: 675 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 98 * fem,
                      height: 38 * fem,
                      child: Text(
                        'Clothes',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffe3fbd4),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // othernGm (81:74)
                  left: 238 * fem,
                  top: 675 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 72 * fem,
                      height: 38 * fem,
                      child: Text(
                        'Other',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffe3fbd4),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // captureremovebgpreview161nRB (85:82)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 360 * fem,
                      height: 259 * fem,
                      child: Image.asset(
                        'assets/images/capture-removebg-preview-16-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // undrawrelaxingathomeremrorremo (87:84)
                  left: 0 * fem,
                  top: 301 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 178 * fem,
                      height: 123 * fem,
                      child: Image.asset(
                        'assets/images/undrawrelaxingathomeremror-removebg-preview-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // undrawmyanswerrek4dvremovebgpr (88:124)
                  left: 169 * fem,
                  top: 546 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 201 * fem,
                      height: 137 * fem,
                      child: Image.asset(
                        'assets/images/undrawmyanswerrek4dv-removebg-preview-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // undrawmonitoriqpqremovebgprevi (88:125)
                  left: 186 * fem,
                  top: 286 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 167 * fem,
                      height: 131 * fem,
                      child: Image.asset(
                        'assets/images/undrawmonitoriqpq-removebg-preview-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // undrawwebshoppingreowapremoveb (88:126)
                  left: 0 * fem,
                  top: 546 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 183 * fem,
                      height: 137 * fem,
                      child: Image.asset(
                        'assets/images/undrawwebshoppingreowap-removebg-preview-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Positioned(
                    // icons8back5013jFs (156:157)
                    left: 11 * fem,
                    top: 16 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 21 * fem,
                        height: 21 * fem,
                        child: Image.asset(
                          'assets/images/icons8-back-50-1-3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
