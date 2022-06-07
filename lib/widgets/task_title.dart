import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function deleteCallBack;
  // void checkBoxCallBack(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });
  // }
  //

  TaskTitle({
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallBack,
    required this.deleteCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        deleteCallBack();
      },
      title: Text(
        taskTitle ,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (val) {
            checkBoxCallBack(val);
          }),
    );
  }
}

// (bool? checkboxState) {
// setState(() {
// isChecked = checkboxState!;
// });
// },
