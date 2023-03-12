import 'package:flutter/material.dart';

import 'TasksList.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
      body: Container(
        padding:
            const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, size: 35),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Scaffold();
                    }));
                  },
                ),
                IconButton(
                  onPressed: () {
                    return null;
                  },
                  icon: Icon(Icons.home, size: 35),
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'You have 4 tasks :',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
