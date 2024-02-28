// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:todayapp/models/task.dart';
import 'package:todayapp/screens/add_task_screen.dart';
import 'package:todayapp/widgets/tasks_list.dart';


class tasksscreen extends StatefulWidget {
  const tasksscreen({super.key});

  @override
  State<tasksscreen> createState() => _tasksscreenState();
}

class _tasksscreenState extends State<tasksscreen> {
   List<Task> tasks = [
  Task(name: 'go shopping'),
  Task(name: 'drink water'),
  Task(name: 'go to the gym'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context, 
          builder: (context) => SingleChildScrollView
          (child: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom),
            child: AddTaskScreen((newTaskTitle){
              setState(() {
                 tasks.add(Task(name: newTaskTitle));
                 Navigator.pop(context);
              });
             
            }),
          ),
          ),
          );
        },
        backgroundColor: Color.fromARGB(255, 171, 177, 213),
        child: Icon(Icons.add),
        ),
      backgroundColor: Color.fromARGB(255, 21, 21, 64),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60, left: 20, right: 20, bottom: 80
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check, size: 40,
                color: Colors.white,), 
                SizedBox(
                  width: 20,
                ),
                Text('ToDayDo', style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),)],
            ),
            Text('${tasks.length} Tasks', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            ),
            SizedBox(height: 20),
           Expanded(
             child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(124, 250, 252, 255) ,
              borderRadius: BorderRadius.all(Radius.circular(30),
              ),
              ),
              child: Taskslist(tasks ),
             ),
           )
          ],
        ),
      ),
    );
  }
}

