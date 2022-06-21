import 'package:flutter/cupertino.dart';
import 'package:to_do_list/models/task.dart';

class TaskData with ChangeNotifier {
  List<Task> _taskList = [
    Task(title: 'Long Press to delete'),
  ];

  List<Task> get taskList {
    return [..._taskList];
  }

  int get tasksLength {
    return _taskList.length;
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }

  void addTask(taskTitle) {
    _taskList.add(Task(title: taskTitle));
    notifyListeners();
  }

  void toggleCheckTask(Task task) {
    task.toggleCheck();
    notifyListeners();
  }
}
