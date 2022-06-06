import 'package:flutter/material.dart';


class TaskTitle extends StatelessWidget {

  bool isChecked = false;
  final String taskTitle;
  final Function checkBoxCallBack;

  // void checkBoxCallBack(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });
  // }
  //

  TaskTitle({required this.isChecked , required this.taskTitle , required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (val) {
            checkBoxCallBack(val);
          }
      ),
    );
  }
}

// (bool? checkboxState) {
// setState(() {
// isChecked = checkboxState!;
// });
// },
