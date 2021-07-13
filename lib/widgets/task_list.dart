import 'package:flutter/material.dart';
import 'package:to_do/widgets/task_tile.dart';
import 'package:to_do/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child) =>
       ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.task[index].title,
            isChecked: taskData.task[index].isDone,
            taskCallBack: (newValue) {
                  taskData.updateTask(taskData.task[index]);
            },
            deleteTaskCallBack: (){
              taskData.deleteTask(index);
            },
          );
        },
        itemCount: taskData.task.length,
      ),
    );
  }
}
