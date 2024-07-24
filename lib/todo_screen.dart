import 'package:flutter/material.dart';
import 'package:to_do_list_app/model/task_data.dart';
import 'package:to_do_list_app/widgets/add_task.dart';
import 'package:to_do_list_app/widgets/task_info.dart';
import 'package:to_do_list_app/widgets/task_list.dart';
import 'package:to_do_list_app/widgets/todo_appbar.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Task> tasks = [];
  void ubdateTasks() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return AddTask(
                    addNewTask: (newVal) {
                      setState(() {
                        tasks.add(Task(content: newVal));
                      });
                      Navigator.pop(context);
                    },
                  );
                });
          }),
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          TodoAppBar(),
          SizedBox(
            height: 70,
          ),
          TaskInfo(done: Task.countDone, deu: Task.countDeu),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TaskList(
                taskList: tasks,
                ubdateTask: ubdateTasks,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
