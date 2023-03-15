// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'Widgets/Todo_Card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoApp(),
    );
  }
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class Task {
  String title;
  bool status;
  Task({required this.status, required this.title});
}

List allTasks = [
  Task(title: "Task_1", status: false),
  Task(title: "Task_2", status: true),
  Task(title: "Task_3", status: false),
];

class _ToDoAppState extends State<ToDoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      ),
      body: Column(
        children: [
          Container(
              height: 200,
              width: double.infinity,
              child: Center(
                  child: Text(
                "My Tasks",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ))),
          SizedBox(
            height: 10,
          ),
          ...allTasks
              .map((item) => TodoCard(
                    varTitle: item.title,
                    varStatus: item.status,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
