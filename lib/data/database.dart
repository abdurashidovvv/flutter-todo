import 'package:hive_flutter/adapters.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box("mybox");

  //run this method if this is the 1st time opening app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }


}
