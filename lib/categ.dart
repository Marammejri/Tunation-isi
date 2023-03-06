import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/Navbar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'bottomnaviagtionbar.dart';
import 'money.dart';
import 'Navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Categ extends StatelessWidget {
  const Categ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[50],
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Color.fromARGB(255, 167, 203, 231),
            animationDuration: Duration(milliseconds: 300),
            onTap: (index) {},
            items: [
              Icon(
                Icons.home,
                color: Colors.teal[400],
              ),
              Icon(Icons.settings, color: Colors.teal[400]),
              Icon(Icons.person, color: Colors.teal[400]),
            ]),
        body: Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.teal[50],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image:
                          AssetImage("assets/images/undraw_pilates_gpdb.png"))),
            ),
            Column(children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 40,
                      fontFamily: "myfont",
                      color: Colors.teal[400]),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29.5),
                    color: Colors.white),
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      icon: SvgPicture.asset(
                        "assets/images/search-alt-svgrepo-com.svg",
                        width: 40,
                      ),
                      border: InputBorder.none),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    CategoryCard(
                        title: "Food",
                        svgSrc: "assets/images/undraw_breakfast_psiw.svg",
                        press: () {}),
                    CategoryCard(
                      title: "Education",
                      svgSrc: "assets/images/undraw_education_f8ru.svg",
                      press: () {},
                    ),
                    CategoryCard(
                        title: "Home Supplies",
                        svgSrc: "assets/images/undraw_home_cinema_l7yl.svg",
                        press: () {}),
                    CategoryCard(
                        title: "Money",
                        svgSrc: "assets/images/undraw_savings_re_eq4w.svg",
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Bottomn();
                          }));
                        }),
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final void Function() press;
  const CategoryCard({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 17), blurRadius: 17, spreadRadius: -23)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(
                    svgSrc,
                    height: 90,
                  ),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
