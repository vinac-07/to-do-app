import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function taskCallBack;
  final Function deleteTaskCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.taskCallBack,this.deleteTaskCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: taskCallBack,
          ),
          TextButton(
              onPressed: deleteTaskCallBack,
              child: Icon(Icons.delete_forever_rounded,color: Colors.grey[800],),
          )
        ],
      ),
    );
  }
}
