import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {



  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  const ToDoTile({super.key, 
  required this.taskName, 
  required this.taskCompleted, 
  required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          children: [

              //Checkbox
              Checkbox(value: taskCompleted, onChanged: (value) {}),
            //Task Name
            Text(
              taskName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

