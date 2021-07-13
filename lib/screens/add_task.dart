import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_data.dart';

class AddNewTask extends StatelessWidget {

  final Function addTaskCallback;
  final myController = TextEditingController();
  AddNewTask(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    // String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: 30.0),

            TextField(
            autofocus: true,
              controller: myController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightBlueAccent,style: BorderStyle.solid)),
                focusColor: Colors.lightBlueAccent
              ),

            ),
            SizedBox(height: 30.0,),

            TextButton(

                onPressed: (){
                  // print('add');
                  // print(myController.text);
                  Provider.of<TaskData>(context,listen: false).addTask(myController.text);
                  Navigator.pop(context);
                },
              child: Text('Add',style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.lightBlueAccent)

              ),
            )
          ],
        ),
      ),
    );
  }
}
