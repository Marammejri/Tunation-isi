//Region

import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/Screens/regions.dart';
import 'dart:ui';

import '../utils.dart';

class Region extends StatefulWidget {
  const Region({Key? key}) : super(key: key);
  @override
  State<Region> createState() => _RegionState();
}

class _RegionState extends State<Region> {
  List<Regions> regions = regionList;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      body: Container(
        // regionWeZ (92:134)
        width: double.infinity,
        height: 800 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 540),
              child: Positioned(
                // depositphotos155580320stockpho (93:146)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 422 * fem,
                    height: 270 * fem,
                    child: Image.asset(
                      'assets/images/mosque.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle13Gn9 (93:148)
              left: 0 * fem,
              top: 200 * fem,
              child: Align(
                child: SizedBox(
                  width: 360 * fem,
                  height: 559 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xf9ffce6f),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30 * fem),
                        topRight: Radius.circular(30 * fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle33WgV (151:146)
              left: 10 * fem,
              top: 214 * fem,
              child: Align(
                child: SizedBox(
                  width: 340 * fem,
                  height: 541 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50 * fem),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/associa");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' Regions',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff866627),
                      ),
                    ),
                    SizedBox(width: 22),
                    Align(
                      child: Image.asset(
                        'assets/images/country.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: DraggableScrollableSheet(
                initialChildSize: 0.63,
                minChildSize: 0.63,
                maxChildSize: 0.63,
                builder: (context, scrollController) => Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12, left: 12, right: 12),
                    child: ListView.separated(
                      controller: scrollController,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Scaffold(
                                backgroundColor: Colors.red,
                              );
                            }));
                          },
                          child: ListTile(
                            title: Text(regions[index].name),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        );
                      },
                      separatorBuilder: (__, _) => const Divider(),
                      itemCount: regions.length,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
