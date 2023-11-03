import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskIndicate,
      required this.onChanged,
      required this.deleteFunc});
  final String taskName;
  final bool taskIndicate;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunc,
              icon: Icons.delete,
              backgroundColor: Colors.redAccent,
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 191, 34),
              borderRadius: BorderRadius.circular(7)),
          child: Row(children: [
            Checkbox(
              value: taskIndicate,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(taskName)
          ]),
        ),
      ),
    );
  }
}
