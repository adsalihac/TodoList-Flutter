import 'package:flutter/material.dart';


class TaskTitle extends StatefulWidget {
  const TaskTitle({Key? key}) : super(key: key);

  @override
  State<TaskTitle> createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTitle> {

  bool isChecked = false;

  // void checkBoxCallBack(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });
  // }
  //

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(checkboxState: isChecked,
        toggleCheckBoxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState!;
          });
        },
      ),
    );
  }
}


class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckBoxState;

  TaskCheckBox({required this.checkboxState , required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (val) {
        toggleCheckBoxState(val);
      },
    );
  }
}
