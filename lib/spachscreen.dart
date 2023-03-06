import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/test.dart';
import 'package:flutter_final_project_level1/test1.dart';
import 'package:page_transition/page_transition.dart';

class Splach extends StatefulWidget {
  const Splach({Key? key}) : super(key: key);
  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Test())));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 200,
      backgroundColor: Color.fromARGB(255, 236, 198, 195),
      pageTransitionType: PageTransitionType.topToBottom,
      splashTransition: SplashTransition.rotationTransition,
      splash: CircleAvatar(
          radius: 90,
          backgroundColor: Color.fromARGB(255, 235, 173, 168),
          backgroundImage: AssetImage(
              "assets/valentine-day-heart-3d-illustration-design-removebg-preview.png")),
      nextScreen: Test(),
    );
  }
}
