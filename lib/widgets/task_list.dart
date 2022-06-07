import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import './task_title.dart';
import '../models/task.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Consumer(
    //   builder: (context , taskData , child) {
    //     return Stack(
    //       children: [
    //     ListView.builder(
    //     // itemCount: taskData?.tasks.length,
    //     itemBuilder: (context, index) {
    //     return TaskTitle(
    //     isChecked:Provider.of<TaskData>(context).tasks[index].isDone,
    //     taskTitle: Provider.of<TaskData>(context).tasks[index].name,
    //     checkBoxCallBack: (bool? checkboxState) {
    //     Provider.of<TaskData>(context).tasks[index].isDone = checkboxState!;
    //     },
    //     );
    //     }),
    //       ],
    //     )
    //   },
    // );
    return Consumer<TaskData>(
      builder: (context, taskData, child) => Stack(
        children: [
          // Use SomeExpensiveWidget here, without rebuilding every time.
          if (taskData.taskCount == 0) const Text('No Task Found'),
          if (child != null) child,
          ListView.builder(
              itemCount: taskData.taskCount,
              itemBuilder: (context, index) {
                final taskIndex = taskData.tasks[index];
                return TaskTitle(
                  isChecked: taskIndex.isDone,
                  taskTitle: taskIndex.name,
                  checkBoxCallBack: (bool? checkboxState) {
                    // taskData.tasks[index].isDone = checkboxState!;
                    taskData.updateTask(taskIndex);
                  },
                  deleteCallBack: () {
                    taskData.deleteTask(taskIndex);
                  },
                );
              }),
        ],
      ),
      // Build the expensive widget here.
    );
  }
}
