import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference the box
  final _myBox = Hive.box('mybox');
  //run this method if this the first time opening the app
  void createInitialData() {
    toDoList = [
      ["Study Flutter Course", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updataDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
