import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of todo Tasks
  List toDoTiles = [
    ["Study Flutter course", false],
    ["Do Exercise", false],
  ];
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoTiles[index][1] = !toDoTiles[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Text("To DO"), elevation: 0.0),
      body: ListView.builder(
        itemCount: toDoTiles.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoTiles[index][0],
            taskCompleted: toDoTiles[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
