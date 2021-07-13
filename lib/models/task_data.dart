import 'package:flutter/foundation.dart';
import 'package:to_do/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task>task =[
    Task(title: 'Study'),
  ];

  void addTask(String newTaskTitle){
    task.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleValue();
    notifyListeners();
  }

  void deleteTask(int index){
    task.removeAt(index);
    notifyListeners();
  }
}