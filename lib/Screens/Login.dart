import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/Screens/Login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart' hide UserCredential;

import '../utils.dart';

class Login extends StatelessWidget {
  var myemail, mypass;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  get context => null;

  signIn() async {
    var formdata = formstate.currentState;
    if (formdata != null) {
      // hedhi amalneha khater validate tnajamesh tkoun dekhel fonction null donc yelzem nhotou condition ennou formdat tkounesh null
      // bech nverifi data eli dakhaltha shiha walle
      if (formdata.validate()) {
        formdata.save();
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: email.text, password: password.text);
          return userCredential;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print('No user found for that email.');
          } else if (e.code == 'wrong-password') {
            print('Wrong password provided for that user.');
          }
        }
      }
    }
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
      // signinWSe (25:26)
      width: double.infinity,
      height: 800 * fem,
      decoration: BoxDecoration(
        color: Color(0xfffffafa),
      ),
      child: Stack(
        children: [
          Positioned(
            // captureremovebgpreview611PQ (27:41)
            left: 24 * fem,
            top: 21 * fem,
            child: Align(
              child: SizedBox(
                width: 313 * fem,
                height: 325 * fem,
                child: Image.asset(
                  'assets/images/capture-removebg-preview-6-1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            // rectangle26ve (29:44)
            left: 0 * fem,
            top: 324 * fem,
            child: Align(
              child: SizedBox(
                width: 360 * fem,
                height: 513 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50 * fem),
                    color: Color(0x4f0eca0b),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // rectangle11ni (29:56)
            left: 19.9487609863 * fem,
            top: 580 * fem,
            child: Align(
              child: SizedBox(
                width: 319.06 * fem,
                height: 52.19 * fem,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/categ");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25 * fem),
                      color: Color(0xff3cb371),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // rectangle3KoQ (29:61)
            left: 19.9487609863 * fem,
            top: 647 * fem,
            child: Align(
              child: SizedBox(
                width: 319.06 * fem,
                height: 52.19 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25 * fem),
                    color: Color(0x753cb371),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // icons8google50114FC (190:202)
            left: 50 * fem,
            top: 664 * fem,
            child: Align(
              child: SizedBox(
                width: 21 * fem,
                height: 19 * fem,
                child: Image.asset(
                  'assets/images/icons8-google-50 (1).png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            // signinngz (29:59)
            left: 135 * fem,
            top: 591 * fem,
            child: Align(
              child: SizedBox(
                width: 90 * fem,
                height: 25 * fem,
                child: Text(
                  'Sign in\n',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 25 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1 * ffem / fem,
                    letterSpacing: 0.5 * fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // welcomebackTYE (29:45)
            left: 56 * fem,
            top: 352 * fem,
            child: Align(
              child: SizedBox(
                width: 248 * fem,
                height: 45 * fem,
                child: Text(
                  'Welcome Back !',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 30 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff1f3922),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // inputZrA (29:47)
            left: 27 * fem,
            top: 420 * fem,
            child: Align(
              child: SizedBox(
                width: 307 * fem,
                height: 44 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100 * fem),
                    color: Color(0xffe3fbd4),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // inputVE2 (29:50)
            left: 27 * fem,
            top: 476 * fem,
            child: Align(
              child: SizedBox(
                width: 307 * fem,
                height: 44 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100 * fem),
                    color: Color(0xffe3fbd4),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // enteryouremailpGJ (29:49)
            left: 117 * fem,
            top: 430 * fem,
            child: Align(
              child: SizedBox(
                width: 127 * fem,
                height: 24 * fem,
                child: Text(
                  'Enter Your Email',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // enteryourpassword8Xt (29:52)
            left: 100.5 * fem,
            top: 488 * fem,
            child: Align(
              child: SizedBox(
                width: 160 * fem,
                height: 24 * fem,
                child: Text(
                  'Enter Your Password',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // forgetpasswordqx6 (29:60)
            left: 212.5 * fem,
            top: 528 * fem,
            child: Align(
              child: SizedBox(
                width: 120 * fem,
                height: 25 * fem,
                child: Text(
                  'Forget Password?',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 13 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.9230769231 * ffem / fem,
                    letterSpacing: 0.26 * fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // donthaveanaccountregister8RQ (29:68)
            left: 64.5 * fem,
            top: 714 * fem,
            child: Align(
              child: SizedBox(
                width: 228 * fem,
                height: 25 * fem,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.9230769231 * ffem / fem,
                        letterSpacing: 0.26 * fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Don’t Have An Account? ',
                        ),
                        TextSpan(
                            text: 'Register',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.7857142857 * ffem / fem,
                              letterSpacing: 0.26 * fem,
                              color: Color(0xff004f23),
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () =>
                                  Navigator.of(context).pushNamed("/signup")),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // icons8passwordkey501nPU (190:191)
            left: 54 * fem,
            top: 486 * fem,
            child: Align(
              child: SizedBox(
                width: 26 * fem,
                height: 26 * fem,
                child: Image.asset(
                  'assets/images/icons8-password-key-50.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            // icons8gmail501uDC (190:192)
            left: 57 * fem,
            top: 434 * fem,
            child: Align(
              child: SizedBox(
                width: 20 * fem,
                height: 17 * fem,
                child: Image.asset(
                  'assets/images/icons8-mail-50.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            // signupwithgoogleDza (190:201)
            left: 75 * fem,
            top: 660 * fem,
            child: Align(
              child: SizedBox(
                width: 209 * fem,
                height: 25 * fem,
                child: Text(
                  'Sign up with Google',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.25 * ffem / fem,
                    letterSpacing: 0.4 * fem,
                    color: Color(0xff010411),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ))));
  }
}
