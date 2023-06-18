import 'package:flutter/material.dart';
import 'package:todo/todo_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List todoList = [
    {'title': 'Wake up', 'bool': true},
    {'title': 'Run', 'bool': false},
    {'title': 'study', 'bool': false}
  ];
  List todolist = [
    ['wake up', false],
    ['study', true]
  ];
  final bool = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: const Text('TO DO'),
          shadowColor: Colors.deepPurple,
          elevation: 4.0,
        ),
        body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return Todobox(
                width: width,
                title: todoList[index]['title'],
                checked: todoList[index]['bool'],
                onChecked: (value) {},
              );
            }));
  }
}
