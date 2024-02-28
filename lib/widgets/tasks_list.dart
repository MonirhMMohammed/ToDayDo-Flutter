// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todayapp/models/task.dart';
import 'package:todayapp/widgets/task_list.dart';

class Taskslist extends StatefulWidget {
  final List<Task> tasks;
  Taskslist(this.tasks);

  @override
  State<Taskslist> createState() => _TaskslistState();
}

class _TaskslistState extends State<Taskslist> {
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context , index){
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
           taskTile: widget.tasks[index].name,
           checkboxChange : (newValue){
      setState(() {
        widget.tasks[index].doneChange();
      });
     }
           );
      },
      );
    // return ListView(
    //   children: [
    //     TaskTile(
    //       taskTile: tasks[0].name,
    //       isChecked: tasks[0].isDone,
    //     ),
    //     TaskTile(taskTile: tasks[1].name,
    //       isChecked: tasks[1].isDone,),

    //    TaskTile(taskTile: tasks[2].name,
    //       isChecked: tasks[2].isDone,),

    
    //   ],
    // );
  }
}


