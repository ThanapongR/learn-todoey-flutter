import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks;
            return TaskTile(
              taskTitle: task[index].name,
              isChecked: task[index].isDone,
              checkboxCallBack: (bool? value) {
                taskData.updateTask(task[index]);
              },
              longPressCallBack: () {
                taskData.deleteTask(task[index]);
              },
            );
          },
        );
      },
    );
  }
}
