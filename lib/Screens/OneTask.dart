import 'package:flutter/material.dart';

import 'Task.dart';

class OneTask extends StatefulWidget {
  @override
  State<OneTask> createState() => _OneTaskState();
}

class _OneTaskState extends State<OneTask> {
  bool isChecked = false;
  List<Task> task = TaskList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            task[1].name,
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
          subtitle: Text(task[1].phone + '\n' + task[1].donation),
          trailing: TaskCheck(isChecked, (bool? value) {
            setState(() {
              isChecked = value!;
            });
          }),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Scaffold();
            }));
          },
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class TaskCheck extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?) checkboxchange;

  TaskCheck(this.checkboxState, this.checkboxchange);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal.shade400,
      value: checkboxState,
      onChanged: checkboxchange,
    );
  }
}
