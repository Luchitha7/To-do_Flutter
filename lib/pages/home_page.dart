import 'package:flutter/material.dart';
import 'package:to_do_flutter/util/todo_tile.dart';
import 'package:to_do_flutter/util/dialog_box.dart';
import 'package:to_do_flutter/data/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // database
  final ToDoDatabase db = ToDoDatabase();

  // text editing controller
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // If there is no data, create initial data
    if (db.myBox.get("TODOLIST") == null) {
      db.createInitialData();
      db.updateDatabase();
    } else {
      // there is existing data
      db.loadData();
    }
  }

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = value ?? false;
      db.updateDatabase();
    });
  }

  void deleteTask(int index) {
    setState(() {
      db.todoList.removeAt(index);
      db.updateDatabase();
    });
  }

  void saveNewTask() {
    final text = controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      db.todoList.add([text, false]);
      db.updateDatabase();
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
        itemCount: db.todoList.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(db.todoList[index][0] + index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 30,
              ),
            ),
            onDismissed: (direction) {
              deleteTask(index);
            },
            child: ToDoTile(
              taskName: db.todoList[index][0],
              taskCompleted: db.todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            ),
          );
        },
      ),
    );
  }
}
