import 'package:flutter/material.dart';
import 'package:to_do_list_app/model/task_data.dart';
import 'package:to_do_list_app/widgets/single_task.dart';

class TaskList extends StatelessWidget {
  final List<Task> taskList;
  final Function ubdateTask;
  const TaskList({super.key, required this.taskList , required this.ubdateTask});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, i) {
          return SinglTask(task: taskList[i],ubdatetask:ubdateTask ,);
        });
  }
}
