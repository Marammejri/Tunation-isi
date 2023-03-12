import 'package:flutter/material.dart';

import 'OneTask.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        OneTask(),
        OneTask(),
        OneTask(),
        OneTask(),
      ],
    );
  }
}
