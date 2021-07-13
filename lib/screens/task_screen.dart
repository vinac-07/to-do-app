import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/widgets/task_list.dart';
import 'package:to_do/screens/add_task.dart';
import 'package:to_do/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,isScrollControlled: true, builder: (context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top),
              child: AddNewTask((newTaskTitle){
                // // print(newTaskTitle);
                // setState(() {
                // });
                Navigator.pop(context);
              },
              ),
            ),
          ));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),

      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,bottom: 30.0,right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CircleAvatar(
                //     child: Icon(Icons.list,size: 30.0,color: Colors.lightBlueAccent,),
                //     radius: 30.0,
                //     backgroundColor: Colors.white,
                // ),
                SizedBox(
                  height: 10.0,
                ),
                Text('To do',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 50.0,
                  ),
                ),
                Text('${Provider.of<TaskData>(context).task.length} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text('\" To succeed in a mission,you must have a single minded devotion to your goal \"      -  A.P.J. Abdul Kalam ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lora',
                    fontSize: 20.0
                  ),
                )
              ],
            ),

          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}




