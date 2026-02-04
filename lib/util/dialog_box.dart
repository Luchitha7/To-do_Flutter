import 'package:flutter/material.dart';
import 'package:to_do_flutter/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.blue[300],
        content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            //get user inputs
            TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter new task",
                ),//end of decoration
            ),

            //buttons -> save new task
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                    //save new task button
                    MyButton(text: "Save", onPressed: onSave),



                    const SizedBox(width: 8),


                    //cancel button
                    MyButton(text: "Cancel", onPressed: onCancel),
                ],
            ),
            ]),//end of column
    );//end of alert dialog
  }
}
 