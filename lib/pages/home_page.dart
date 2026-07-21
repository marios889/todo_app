import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Text("To DO"), elevation: 0.0),
      body: ListView(
        children: [
          TodoTile(
            taskName: "Study flutter course",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          TodoTile(
            taskName: "Do Exercise",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}
