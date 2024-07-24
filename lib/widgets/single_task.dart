import 'package:flutter/material.dart';
import 'package:to_do_list_app/model/task_data.dart';
import 'package:to_do_list_app/widgets/text.dart';

class SinglTask extends StatefulWidget {
  final Task task;
  final Function ubdatetask;
  const SinglTask({super.key, required this.task, required this.ubdatetask});
  @override
  State<SinglTask> createState() => _SinglTaskState();
}

class _SinglTaskState extends State<SinglTask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: smallText(
              widget.task.content!,
            ),
            titleTextStyle: TextStyle(
                decoration:
                    widget.task.isDone! ? TextDecoration.lineThrough : null),
            trailing: Checkbox(
              value: widget.task.isDone,
              onChanged: (newValue) {
                setState(() {
                  widget.task.changedTaskState();
                  widget.ubdatetask();
                });
                
              },
            )),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          height: 2,
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
