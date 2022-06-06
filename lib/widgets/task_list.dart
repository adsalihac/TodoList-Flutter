import 'package:flutter/material.dart';
import './task_title.dart';
import '../models/task.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;

  TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTitle(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkBoxCallBack: (bool? checkboxState) {
              setState(() {
                widget.tasks[index].isDone = checkboxState!;
                // tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
