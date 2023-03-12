import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/Screens/Login.dart';
import 'package:flutter_final_project_level1/Screens/Signup.dart';
import 'package:flutter_final_project_level1/Screens/test1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Welcome.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  // controller to keep track on which page we re on
  PageController _controller = PageController();
  bool onlast = false;
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlast == {index == 2};
              });
            },
            children: [Test1(), Login(), Signup()],
          ),
          Container(
              alignment: Alignment(0.sp, 0.85.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _controller.previousPage(
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Text('Back',
                          style:
                              TextStyle(fontSize: 20, fontFamily: "myfont"))),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onlast
                      ? GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text('Done',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "myfont")),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text('Next',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "myfont")),
                        )
                ],
              ))
        ]),
      ),
    );
  }
}
