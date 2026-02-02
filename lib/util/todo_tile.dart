import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {



  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  ToDoTile({super.key, 
  required this.taskName, 
  required this.taskCompleted, 
  required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.only(left: 15.0, right: 25.0, top:5.0, bottom: 5.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged,
            activeColor: Colors.blue,
            checkColor: Colors.white,
            side: BorderSide(color: Colors.black),
            //fillColor: MaterialStateProperty.all(Colors.blue),
            shape: RoundedRectangleBorder(
            ),
            ),
            //Task Name
            Text(
              taskName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

