import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    this.checkboxCallBack,
    this.longPressCallBack,
  });

  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallBack;
  final Function()? longPressCallBack;

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
        onChanged: checkboxCallBack,
      ),
      onLongPress: longPressCallBack,
    );
  }
}
