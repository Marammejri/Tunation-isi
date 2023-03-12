import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/model/add_date.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);
  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final box = Hive.box<Add_data>('data');

  DateTime date = DateTime.now();

  String? selectedItem;
  String? selectedItemi;

  final List<String> _item2 = ['food', 'Education', 'Transfer'];
  final TextEditingController explain_C = TextEditingController();
  FocusNode ex = FocusNode();
  final TextEditingController amount_a = TextEditingController();
  FocusNode amount = FocusNode();
  final List<String> _item = ['Income', 'Expanded'];

  int? get userInput => null;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ex.addListener(() {
      setState(() {});
    });
    amount.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            background_cont(context),
            Positioned(
              top: 120,
              child: main_cont(),
            )
          ],
        ),
      ),
    );
  }

  Container main_cont() {
    return Container(
        height: 550.h,
        width: 340.w,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 133, 45, 38),
              offset: Offset(0, 6),
              blurRadius: 12,
              spreadRadius: 6)
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          SizedBox(height: 50.h),
          name(),
          SizedBox(height: 30.h),
          explain(),
          SizedBox(height: 30.h),
          Amount(),
          SizedBox(height: 30.h),
          How(),
          SizedBox(height: 30.h),
          date_time(),
          SizedBox(height: 30.h),
          save()
        ]));
  }

  GestureDetector save() {
    return GestureDetector(
      onTap: () {
        var add = Add_data(
            selectedItemi!, amount_a.text, date, explain_C.text, selectedItem!);
        box.add(add);
        Navigator.of(context).pop();
      },
      child: Container(
        width: 120.w,
        height: 50.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 124, 3, 3)),
        child: Text("Save",
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.sp,
                fontFamily: 'f',
                fontWeight: FontWeight.w600)),
      ),
    );
  }

  Widget date_time() {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 300.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.w, color: Colors.grey),
      ),
      child: TextButton(
        onPressed: () async {
          DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: date,
              firstDate: DateTime(2023),
              lastDate: DateTime(2100));
          if (newDate == Null) return;
          setState(() {
            date = newDate!;
          });
        },
        child: Text(' Date : ${date.day}/${date.month}/${date.year}',
            style: TextStyle(
                color: Color.fromARGB(255, 2, 2, 2),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Padding How() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2.w,
            color: Color(0xffC5C5C5),
          ),
        ),
        child: DropdownButton<String>(
          value: selectedItemi,
          onChanged: ((value) {
            setState(() {
              selectedItemi = value!;
            });
          }),
          items: _item
              .map((e) => DropdownMenuItem(
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Text(
                            e,
                            style: TextStyle(fontSize: 18.sp),
                          )
                        ],
                      ),
                    ),
                    value: e,
                  ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _item
              .map((e) => Row(
                    children: [Text(e)],
                  ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              'How',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }

  Padding Amount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        onTap: () {
          try {
            int num = int.parse(userInput.toString());
            print("The number is: $num");
          } on FormatException catch (e) {
            print("Invalid input. Please enter a valid number.");
          }
        },
        keyboardType: TextInputType.number,
        focusNode: amount,
        controller: amount_a,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            labelText: 'Amount',
            labelStyle: TextStyle(
                fontSize: 20.sp,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w600),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2.w,
                  color: Color.fromARGB(255, 185, 181, 181),
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2.w,
                  color: Color.fromARGB(255, 185, 181, 181),
                ))),
      ),
    );
  }

  Padding explain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        focusNode: ex,
        controller: explain_C,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            labelText: 'Explain',
            labelStyle: TextStyle(
                fontSize: 20.sp,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w600),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2.w,
                  color: Color.fromARGB(255, 185, 181, 181),
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2.w,
                  color: Color.fromARGB(255, 185, 181, 181),
                ))),
      ),
    );
  }

  Padding name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2.w,
            color: Color(0xffC5C5C5),
          ),
        ),
        child: DropdownButton<String>(
          value: selectedItem,
          onChanged: ((value) {
            setState(() {
              selectedItem = value!;
            });
          }),
          items: _item2
              .map((e) => DropdownMenuItem(
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Container(
                            width: 40.w,
                            child: Image.asset('assets/images/$e.png'),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            e,
                            style: TextStyle(fontSize: 18.sp),
                          )
                        ],
                      ),
                    ),
                    value: e,
                  ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _item2
              .map((e) => Row(
                    children: [
                      Container(
                        width: 42.w,
                        child: Image.asset('assets/images/$e.png'),
                      ),
                      SizedBox(width: 5.w),
                      Text(e)
                    ],
                  ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              'Name',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }

  Column background_cont(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240.h,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 102, 8, 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Text("Adding",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.attach_file_outlined, color: Colors.white),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
