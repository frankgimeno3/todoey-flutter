import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function() checkboxCallback; // Cambiado a Function()

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback, required Null Function() longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          checkboxCallback(); // Llama a la función sin argumentos
        },
      ),
    );
  }
}