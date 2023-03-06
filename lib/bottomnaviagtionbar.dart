import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/Stat.dart';
import 'package:flutter_final_project_level1/money.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'add.dart';

class Bottomn extends StatefulWidget {
  const Bottomn({Key? key}) : super(key: key);
  @override
  State<Bottomn> createState() => _BottomnState();
}

class _BottomnState extends State<Bottomn> {
  int index_color = 0;
  List Screen = [Money(), Stat(), Money(), Stat()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Add()));
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 122, 15, 7),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      index_color = 0;
                    });
                  },
                  child: Icon(
                    Icons.home,
                    size: 30,
                    color: index_color == 0
                        ? Color.fromARGB(255, 122, 15, 7)
                        : Colors.grey,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      index_color = 1;
                    });
                  },
                  child: Icon(Icons.bar_chart_outlined,
                      size: 30,
                      color: index_color == 1
                          ? Color.fromARGB(255, 122, 15, 7)
                          : Colors.grey)),
              SizedBox(width: 20.w),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      index_color = 2;
                    });
                  },
                  child: Icon(Icons.account_balance_wallet_outlined,
                      size: 30,
                      color: index_color == 2
                          ? Color.fromARGB(255, 122, 15, 7)
                          : Colors.grey)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      index_color = 3;
                    });
                  },
                  child: Icon(Icons.person_outlined,
                      size: 30,
                      color: index_color == 3
                          ? Color.fromARGB(255, 122, 15, 7)
                          : Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
