import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/widgets/Navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils.dart';
import '../widgets/bottomnaviagtionbar.dart';
import 'money.dart';
import '../widgets/Navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);
  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
      child: TextButton(
        // educationhyL (178:170)
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 800 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // icons8back5012BNi (178:172)
                left: 9 * fem,
                top: 26 * fem,
                child: Align(
                  child: SizedBox(
                    width: 21 * fem,
                    height: 21 * fem,
                    child: Image.asset(
                      'assets/images/icons8-back-50 (1).png',
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
                  // rectangle245U6 (178:173)
                  left: 0 * fem,
                  top: 202 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 360 * fem,
                      height: 600 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x333cb371),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60 * fem),
                            topRight: Radius.circular(60 * fem),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle25yJa (178:174)
                left: 8 * fem,
                top: 311 * fem,
                child: Align(
                  child: SizedBox(
                    width: 161 * fem,
                    height: 177 * fem,
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
                // bookstAe (178:175)
                left: 50 * fem,
                top: 451 * fem,
                child: Align(
                  child: SizedBox(
                    width: 77 * fem,
                    height: 38 * fem,
                    child: Text(
                      'Books',
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
                // rectangle26AP4 (178:176)
                left: 191 * fem,
                top: 313 * fem,
                child: Align(
                  child: SizedBox(
                    width: 161 * fem,
                    height: 177 * fem,
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
                // laptopst4A (181:185)
                left: 226 * fem,
                top: 451 * fem,
                child: Align(
                  child: SizedBox(
                    width: 102 * fem,
                    height: 38 * fem,
                    child: Text(
                      'Laptops',
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
                // rectangle27bUN (178:177)
                left: 11 * fem,
                top: 529 * fem,
                child: Align(
                  child: SizedBox(
                    width: 161 * fem,
                    height: 177 * fem,
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
                // rectangle28vWe (178:178)
                left: 189 * fem,
                top: 529 * fem,
                child: Align(
                  child: SizedBox(
                    width: 161 * fem,
                    height: 177 * fem,
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
                // otherd7g (182:187)
                left: 240 * fem,
                top: 667 * fem,
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
                // undrawstartuplifere8ow9removeb (178:179)
                left: 182 * fem,
                top: 313 * fem,
                child: Align(
                  child: SizedBox(
                    width: 181.71 * fem,
                    height: 144 * fem,
                    child: Image.asset(
                      'assets/images/undrawstartuplifere8ow9-removebg-preview-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // bagsMrr (178:180)
                left: 59 * fem,
                top: 667 * fem,
                child: Align(
                  child: SizedBox(
                    width: 64 * fem,
                    height: 38 * fem,
                    child: Text(
                      'Bags',
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
                // undrawbookloverrerwjyremovebgp (178:181)
                left: 15 * fem,
                top: 311 * fem,
                child: Align(
                  child: SizedBox(
                    width: 140 * fem,
                    height: 158.22 * fem,
                    child: Image.asset(
                      'assets/images/undrawbookloverrerwjy-removebg-preview-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // undrawtruefriendsc94gremovebgp (178:182)
                left: 19 * fem,
                top: 524 * fem,
                child: Align(
                  child: SizedBox(
                    width: 143 * fem,
                    height: 160 * fem,
                    child: Image.asset(
                      'assets/images/undrawtruefriendsc94g-removebg-preview-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // undrawselectre3kbdremovebgprev (178:183)
                left: 174 * fem,
                top: 524 * fem,
                child: Align(
                  child: SizedBox(
                    width: 178 * fem,
                    height: 161 * fem,
                    child: Image.asset(
                      'assets/images/undrawselectre3kbd-removebg-preview-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // captureremovebgpreview313ejU (178:184)
                left: 20 * fem,
                top: 39 * fem,
                child: Align(
                  child: SizedBox(
                    width: 350 * fem,
                    height: 239 * fem,
                    child: Image.asset(
                      'assets/images/capture-removebg-preview-31-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ))));
  }
}
