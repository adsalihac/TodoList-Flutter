import 'package:flutter/foundation.dart';
import './task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk', isDone: true),
    Task(name: 'Buy egg', isDone: true),
    Task(name: 'Buy bread', isDone: true),
    Task(name: 'Buy chicken', isDone: true),
  ];

  UnmodifiableListView<Task> get tasks {
     return UnmodifiableListView(_tasks);
  }

  void addTask(String val) {
    if (kDebugMode) {
      print(val);
    }
    _tasks.add(Task(name: val));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

}