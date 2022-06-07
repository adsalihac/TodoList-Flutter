import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  String? newTaskTitle ;

  AddTaskScreen({Key? key}) : super(key: key);

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
              // print(newTaskTitle);
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
              Navigator.pop(context);
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
