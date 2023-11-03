import 'package:flutter/material.dart';
import 'package:myplanner/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.onSave,
      required this.onCancel,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amberAccent,
      content: SizedBox(
        height: 120,
        child: Column(children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Add a new task"),
          ),
          Row(children: [
            MyButton(text: "Save", onPressed: onSave),
            MyButton(text: "Cancel", onPressed: onCancel)
          ])
        ]),
      ),
    );
  }
}
