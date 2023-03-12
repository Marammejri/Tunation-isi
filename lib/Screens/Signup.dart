import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_final_project_level1/Anim.dart';
import 'package:flutter_final_project_level1/Screens/Login.dart';
import 'package:flutter_final_project_level1/Screens/categ.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../flutter_facebook_auth_platform_interface/src/access_token.dart';

import 'package:firebase_auth/firebase_auth.dart' hide UserCredential;

import '../utils.dart';

class Signup extends StatelessWidget {
  var username, myemail, mypass;
  var loading = false;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get User => _user!;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController user = TextEditingController();

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  Future<void> _googlesignin() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    await FirebaseAuth.instance.signInWithCredential(credential);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Categ()),
    );
  }

  get http => null;
  void _signupwithfb() async {
    try {
      final LoginResult result = await FacebookAuth.instance
          .login(permissions: (['email', 'public_profile']));
      final token = result.accessToken!.token;
      print(
          'Facebook token userID : ${result.accessToken!.grantedPermissions}');
      final graphResponse = await http.get(Uri.parse(
          'https://graph.facebook.com/'
          'v2.12/me?fields=name,first_name,last_name,email&access_token=${token}'));

      final profile = jsonDecode(graphResponse.body);
      print("Profile is equal to $profile");
      try {
        final AuthCredential facebookCredential =
            FacebookAuthProvider.credential(result.accessToken!.token);
        final userCredential = await FirebaseAuth.instance
            .signInWithCredential(facebookCredential);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Anim()),
        );
      } catch (e) {
        final snackBar = SnackBar(
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating,
          content: Text(e.toString()),
          backgroundColor: (Colors.redAccent),
          action: SnackBarAction(
            label: 'dismiss',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      print("error occurred");
      print(e.toString());
    }
  } // hedhi ta facebook

  get context => null;

  signUp() async {
    var formdata = formstate.currentState;
    if (formdata != null) {
      // hedhi amalneha khater validate tnajamesh tkoun dekhel fonction null donc yelzem nhotou condition ennou formdat tkounesh null
      // bech nverifi data eli dakhaltha shiha walle
      if (formdata.validate()) {
        formdata.save();
        try {
          UserCredential? userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: email.text, password: password.text)
              .then((value) {
            FirebaseFirestore.instance
                .collection('UserData')
                .doc(value.user?.uid)
                .set({
              "email": value.user?.email,
              "password": value.user?.displayName
            });
          });
          return userCredential;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            AwesomeDialog(
                context: context,
                title: "Error",
                body: Text("The account already exists for that email"))
              ..show();
            print('The account already exists for that email.');
          }
        } catch (e) {
          print(e);
        }
      }
    }
  }

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
        // signupSR3 (32:70)
        width: double.infinity,
        height: 800 * fem,
        decoration: BoxDecoration(
          color: Color(0xfffffafa),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle2Wvh (32:72)
              left: 0 * fem,
              top: 324 * fem,
              child: Align(
                child: SizedBox(
                  width: 360 * fem,
                  height: 487 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50 * fem),
                      gradient: LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0x4f0eca0b), Color(0x4f0eca0b)],
                        stops: <double>[0, 1],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // input6e1 (36:5)
              left: 27 * fem,
              top: 567 * fem,
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
              // rectangle1N5j (32:73)
              left: 19.9487915039 * fem,
              top: 640 * fem,
              child: Align(
                child: SizedBox(
                  width: 319.06 * fem,
                  height: 52.19 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25 * fem),
                      color: Color(0xff3cb371),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle3Edj (32:74)
              left: 19.9567260742 * fem,
              top: 699 * fem,
              child: Align(
                child: SizedBox(
                  width: 319.05 * fem,
                  height: 44.13 * fem,
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
              // signupiYu (32:75)
              left: 130 * fem,
              top: 653 * fem,
              child: Align(
                child: SizedBox(
                  width: 100 * fem,
                  height: 25 * fem,
                  child: Text(
                    'Sign Up\n',
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
              // signupwithgoogleM65 (32:76)
              left: 76 * fem,
              top: 707 * fem,
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
                      color: Color(0xffe3fbd4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // registrationbWD (32:77)
              left: 85 * fem,
              top: 337 * fem,
              child: Align(
                child: SizedBox(
                  width: 190 * fem,
                  height: 45 * fem,
                  child: Text(
                    'Registration',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 30 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff356039),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // inputSmj (32:78)
              left: 27 * fem,
              top: 403 * fem,
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
              // inputXYH (32:79)
              left: 27 * fem,
              top: 456 * fem,
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
              // inputp1b (36:3)
              left: 27 * fem,
              top: 511 * fem,
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
              // enteryourusername6Uu (32:80)
              left: 97.5 * fem,
              top: 411 * fem,
              child: Align(
                child: SizedBox(
                  width: 166 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Enter Your Username',
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
              // enteryouremailkpM (32:81)
              left: 117 * fem,
              top: 466 * fem,
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
              // enterphonenumberba5 (36:4)
              left: 99.5 * fem,
              top: 574 * fem,
              child: Align(
                child: SizedBox(
                  width: 162 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Enter Phone Number',
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
              // enteryourpasswordrW1 (36:6)
              left: 100.5 * fem,
              top: 518 * fem,
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
              // alreadyhaveanaccountsignin7wj (32:83)
              left: 63.5 * fem,
              top: 747 * fem,
              child: Align(
                child: SizedBox(
                  width: 234 * fem,
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
                            text: 'Already Have An Account? ',
                          ),
                          TextSpan(
                              text: 'Sign in',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.7857142857 * ffem / fem,
                                letterSpacing: 0.26 * fem,
                                color: Color(0xff004f23),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/login');
                                }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // captureremovebgpreview814e1 (36:2)
              left: 6 * fem,
              top: 40 * fem,
              child: Align(
                child: SizedBox(
                  width: 349 * fem,
                  height: 302 * fem,
                  child: Image.asset(
                    'assets/images/capture-removebg-preview-8-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ))));
  }
}
