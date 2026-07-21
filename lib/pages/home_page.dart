import 'package:flutter/material.dart';
import 'package:todo_app/utils/dialog_box.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

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

  //save new task
  void saveNewTask() {
    setState(() {
      toDoTiles.add([controller.text, false]);
      controller.clear();
    });
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // create new Task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: controller,
          onCancel: () => Navigator.pop(context),
          onSaved: saveNewTask,
        );
      },
    );
  }

  //delete a task
  void deleteTask(int index) {
    setState(() {
      toDoTiles.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withValues(alpha: 0.92),
      appBar: AppBar(
        title: Text("TO DO"),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: toDoTiles.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoTiles[index][0],
            taskCompleted: toDoTiles[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
