import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/data/model/add_date.dart';
import 'package:flutter_final_project_level1/data/top.dart';
import 'package:flutter_final_project_level1/data/utility.dart';
import 'package:flutter_final_project_level1/widgets/chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Stat extends StatefulWidget {
  const Stat({Key? key}) : super(key: key);
  @override
  State<Stat> createState() => _StatState();
}

class _StatState extends State<Stat> {
  List day = ['Day', 'Week', 'Month', 'Year'];
  List f = [today(), week(), month(), year()];
  List<Add_data> a = [];
  int index_color = 0;
  ValueNotifier kj = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: kj, // hedhi yelzem narefha bedhabt details
        builder: (BuildContext context, dynamic value, Widget? child) {
          a = f[value];
          return custom();
        },
      )),
    );
  }

  CustomScrollView custom() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Text('Statisitcs',
                  style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(4, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            index_color = index;
                            kj.value = index;
                          });
                        },
                        child: Container(
                            height: 40.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index_color == index
                                    ? Color.fromARGB(255, 126, 14, 6)
                                    : Colors.white),
                            alignment: Alignment.center,
                            child: Text(day[index],
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w700,
                                    color: index_color == index
                                        ? Colors.white
                                        : Colors.black))),
                      );
                    })
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 120.w,
                      height: 40.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Expense',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_downward_sharp, color: Colors.grey),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 39, 12, 12),
                              width: 2.w),
                          borderRadius: BorderRadius.circular(8)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Chart(indexx: index_color),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Donating',
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 2, 2),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.swap_vert,
                      size: 25,
                      color: Colors.grey,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset('assets/images/${a[index].name}.png',
                  height: 40.h),
            ),
            title: Text(
              a[index].name,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              ' ${a[index].datetime.year}-${a[index].datetime.day}-${a[index].datetime.month}',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Text(
              a[index].amount,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 19.sp,
                color: a[index].IN == 'Income' ? Colors.green : Colors.red,
              ),
            ),
          );
        }, childCount: a.length)),
      ],
    );
  }
}
