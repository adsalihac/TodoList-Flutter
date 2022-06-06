import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  String? newTaskTitle ;

  final Function addTaskCallBack;

  AddTaskScreen({required this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.normal),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val) {
                newTaskTitle = val;
              },
              // decoration: InputDecoration(
              //   contentPadding: EdgeInsets.symmetric(vertical: 50.0),
              // ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent
            ),
            onPressed: () {
              addTaskCallBack(newTaskTitle);
            },
            child: const Text('Add', style: TextStyle(
              color: Colors.white,
            ),),
          )
        ],
      ),
    );
  }
}
