import 'package:flutter/material.dart';
import 'package:to_do_flutter/util/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('To Do', style: TextStyle(fontWeight: FontWeight.w600)), centerTitle: true, backgroundColor: Colors.blue[400],
        elevation: 0,
      ),
      body: ListView(
        children: [
          const ToDoTile(),
        ],
      ),
    );
  }
}