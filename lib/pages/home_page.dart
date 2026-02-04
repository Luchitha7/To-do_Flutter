import 'package:flutter/material.dart';
import 'package:to_do_flutter/util/todo_tile.dart';
import 'package:to_do_flutter/util/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //text editing controller
  final controller = TextEditingController();
  List todoList = [
    ["Buy groceries", false],
    ["Workout", false],
    ["Read a book", true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = value ?? false;
    });
  }

  void saveNewTask() {
    final text = controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      todoList.add([text, false]);
    });

    controller.clear();
    Navigator.of(context).pop();
  }

  void cancelNewTask() {
    controller.clear();
    Navigator.of(context).pop();
  }

//Creating a new task 

void createNewTask(){
  showDialog(
  context: context, 
  builder: (context) {
    return DialogBox(
      controller: controller,
      onSave: saveNewTask,
      onCancel: cancelNewTask,
    );
  },
  );
}  

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('To Do', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton.extended(
  onPressed: createNewTask,
  backgroundColor: Colors.blue[600],
  elevation: 6,
  icon: const Icon(Icons.add, color: Colors.white),
  label: const Text(
    "Add task",
    style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: todoList[index][0],
            taskCompleted: todoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
