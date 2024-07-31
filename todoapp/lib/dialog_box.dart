import 'package:flutter/material.dart';
import 'package:todoapp/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 147, 183, 201),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "add a new task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(
                  buttonName: "save",
                  onpressed: onSave,
                ),
                SizedBox(width: 5),
                //cancel button
                MyButton(
                  buttonName: "cancel",
                  onpressed: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
