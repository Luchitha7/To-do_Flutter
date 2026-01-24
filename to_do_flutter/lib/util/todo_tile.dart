import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
      child: Text("Make Tutorial"),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
    ));
  }
}

//test 