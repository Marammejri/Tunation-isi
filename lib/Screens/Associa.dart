import 'package:flutter/material.dart';

import '../utils.dart';
import 'associations.dart';

class PageAssociation extends StatelessWidget {
  List<Associations> associations = associationList;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        // regionWNy (153:148)
        width: double.infinity,
        height: 800 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle13cgu (153:150)
              left: 0 * fem,
              top: 257 * fem,
              child: Align(
                child: SizedBox(
                  width: 374 * fem,
                  height: 537 * fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x4f0eca0b),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30 * fem),
                          topRight: Radius.circular(30 * fem),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // captureremovebgpreview361GFf (153:153)
              left: 0 * fem,
              right: 0.6 * fem,
              top: 0.3 * fem,

              child: Align(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.41,
                  child: Image.asset(
                    'assets/images/doctor.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 17 * fem,
              top: 269 * fem,
              child: Align(
                child: SizedBox(
                  width: 330 * fem,
                  height: 512 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50 * fem),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // associationsandorganizations28 (156:166)
              left: 38.5 * fem,
              top: 290 * fem,
              child: Align(
                child: SizedBox(
                  width: 256 * fem,
                  height: 25 * fem,
                  child: Text(
                    'Associations And Organizations',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.6666666667 * ffem / fem,
                      letterSpacing: 0.3 * fem,
                      color: Color(0xff258d53),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // icons8network2641rdB (156:167)
              left: 302 * fem,
              top: 287 * fem,
              child: Column(
                children: [
                  Align(
                    child: SizedBox(
                      width: 33 * fem,
                      height: 31 * fem,
                      child: Image.asset(
                        'assets/images/network.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 330),
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Scaffold(
                            backgroundColor: Colors.red,
                          );
                        }));
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(associations[index].thumbnail),
                        ),
                        title: Text(associations[index].name),
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    );
                  },
                  itemCount: associations.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
