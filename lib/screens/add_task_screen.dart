import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              // decoration: InputDecoration(
              //   contentPadding: EdgeInsets.symmetric(vertical: 50.0),
              // ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent
            ),
            onPressed: null,
            child: const Text('Add', style: TextStyle(
              color: Colors.white,
            ),),
          )
        ],
      ),
    );
  }
}
