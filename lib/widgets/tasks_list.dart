import 'package:flutter/material.dart';
import 'package:flutter_projects/model/task_data.dart';
import 'package:flutter_projects/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: ((context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTitle: task.name,
            checkboxCallBack: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.removeTask(task);
            },
          );
        }),
        itemCount: taskData.taskCount,
      ),
    );
  }
}
