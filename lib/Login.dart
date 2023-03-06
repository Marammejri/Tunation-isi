import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/Login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart' hide UserCredential;

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
    return SafeArea(
        child: Scaffold(
            body: SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Stack(children: [
              SizedBox(
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
                            "Log in",
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: "myfont",
                                color: Colors.grey[800]),
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Image.asset(
                            "assets/Privacy policy-rafiki.png",
                            height: 222,
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
                            child: Form(
                              key: formstate,
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
                          SizedBox(
                            height: 17,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              var user = await signIn();
                              if (user != null) {
                                Navigator.of(context).pushNamed("/categ");
                              } else {
                                print('sign in failed');
                              }

                              // nhotou await khater heya  future
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.teal[800]),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 106, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an accout? "),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/signup");
                                  },
                                  child: Text(
                                    " Sign up",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
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
                                    onPressed: () async {},
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
                                  onPressed: () async {},
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
                  ))
            ]),
          ),
        ),
      ),
    )));
  }
}
