// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last, deprecated_member_use, unused_local_variable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
   AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
          textAlign: TextAlign.center,
           style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30,),
          TextButton(
            onPressed: (){
              addTaskCallback(newTaskTitle);
           
          }, 
          child: Text('Add'
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 240, 244, 255),
            primary: Colors.white,
          ),         
          ),
        ],
      ),
    );
  }
}