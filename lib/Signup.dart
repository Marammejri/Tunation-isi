import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_final_project_level1/Anim.dart';
import 'package:flutter_final_project_level1/Login.dart';
import 'package:flutter_final_project_level1/categ.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'flutter_facebook_auth_platform_interface/src/access_token.dart';

import 'package:firebase_auth/firebase_auth.dart' hide UserCredential;

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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
              width: double.infinity,
              child: Container(
                color: Colors.teal[50],
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "myfont",
                            color: Colors.grey[800]),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Image.asset(
                        "assets/Mobile login-pana.png",
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      Form(
                        key: formstate,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.teal[100],
                                borderRadius: BorderRadius.circular(66),
                              ),
                              width: 266,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                controller: user,
                                onSaved: (val) {
                                  username = val;
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.teal[800],
                                    ),
                                    hintText: "Username :",
                                    border: InputBorder.none),
                              ),
                            ),
                            SizedBox(
                              height: 27,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.teal[100],
                                borderRadius: BorderRadius.circular(66),
                              ),
                              width: 266,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                controller: email,
                                onSaved: (val) {
                                  myemail = val;
                                },
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.email,
                                      color: Colors.teal[800],
                                    ),
                                    hintText: "Your Email :",
                                    border: InputBorder.none),
                              ),
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.teal[100],
                                borderRadius: BorderRadius.circular(66),
                              ),
                              width: 266,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                controller: password,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    suffix: Icon(
                                      Icons.visibility,
                                      color: Colors.teal[800],
                                    ),
                                    icon: Icon(
                                      Icons.lock,
                                      color: Colors.teal[800],
                                      size: 19,
                                    ),
                                    hintText: "Password :",
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (formstate.currentState!.validate()) {
                            // response variable tekhou 9imet les valeur eli hatithom ki nenzel signup o baed trajaha
                            // UserCredential hatineha naw3 response hasb l code ta sign in o naw3 les variables
                            UserCredential response = await signUp();
                            if (response != null) {
                              Navigator.of(context).pushNamed("/categ");
                            } else {
                              print('sign in failed');
                            }
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal[800]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 89, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an accout? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text(
                              " Log in",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      SizedBox(
                        width: 299,
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            )),
                            Text(
                              "OR",
                              style: TextStyle(
                                color: Colors.purple[900],
                              ),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            )),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 100),
                          margin: EdgeInsets.symmetric(vertical: 27),
                          child: Row(children: [
                            TextButton(
                                onPressed: () async {
                                  _signupwithfb();
                                },
                                child: Container(
                                    padding: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.teal, width: 1)),
                                    child: SvgPicture.asset(
                                      "assets/icons/facebook.svg",
                                      color: Colors.teal,
                                      height: 27,
                                    ))),
                            SizedBox(
                              width: 52,
                            ),
                            TextButton(
                              onPressed: () async {
                                _googlesignin();
                              },
                              child: Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.teal, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/icons/google-plus.svg",
                                  color: Colors.teal,
                                  height: 27,
                                ),
                              ),
                            )
                          ]))
                    ]),
              )),
        ),
      ),
    );
  }
}
