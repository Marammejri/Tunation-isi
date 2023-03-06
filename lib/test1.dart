import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';

class Test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          Container(
              padding: EdgeInsets.all(50),
              alignment: Alignment.center,
              width: width.w,
              height: 220.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image:
                          AssetImage("assets/images/undraw_pilates_gpdb.png")),
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(children: [
                LocaleText("Let's Donate ",
                    style: TextStyle(
                        color: Colors.teal[600],
                        fontFamily: 'Poppins',
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w800)),
                LocaleText("You are ",
                    style: TextStyle(fontSize: 30.sp, fontFamily: "myfont")),
                SizedBox(height: 25.h),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // nhotou await khater heya  future
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal[800]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 10.h)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: LocaleText(
                          "Volunteer",
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // nhotou await khater heya  future
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal[800]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 10.h)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: LocaleText(
                          "Association",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(children: [
                Lottie.asset('assets/115417-charity-works-packs.json'),
              ]),
            ),
          ),
        ]),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.language_outlined),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => LanguagePage()));
        },
      ),
    );
  }
}

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: LocaleText("language"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("English"),
            onTap: () => LocaleNotifier.of(context)?.change('en'),
          ),
          ListTile(
            title: Text("دری"),
            onTap: () => LocaleNotifier.of(context)?.change('fa'),
          ),
        ],
      ),
    );
  }
}
