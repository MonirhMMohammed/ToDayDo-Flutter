// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TaskTile extends StatelessWidget  {
   final  bool isChecked ;
   final String taskTile;
   final void Function(bool?) checkboxChange;
   TaskTile({required this.isChecked , required this.taskTile , required this.checkboxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
     title: Text(taskTile,
      style: TextStyle(
      decoration: isChecked ? TextDecoration.lineThrough : null
     ),
     ),
     
     trailing:Checkbox(
      activeColor: Color.fromARGB(255, 112, 112, 112),
     value: isChecked,
     onChanged: checkboxChange,

    ) ,
    );
  }
}

