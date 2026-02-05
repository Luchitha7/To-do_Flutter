import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  // list of todo tasks in memory
  List todoList = [];

  // reference to the Hive box (already opened in main)
  final Box myBox = Hive.box('myBox');

  // run this if it's the first time ever opening the app
  void createInitialData() {
    todoList = [
      ["Buy groceries", false],
      ["Workout", false],
      ["Read a book", true],
    ];
  }

  // load the data from Hive
  void loadData() {
    todoList = myBox.get("TODOLIST", defaultValue: []);
  }

  // update Hive with the current list
  void updateDatabase() {
    myBox.put("TODOLIST", todoList);
  }
}