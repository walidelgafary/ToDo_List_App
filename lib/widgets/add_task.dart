import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addNewTask;
  const AddTask({super.key, required this.addNewTask});
  @override
  Widget build(BuildContext context) {
    String textFieldData = '';
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 15,
          right: 15,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (String value) {
                textFieldData = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  addNewTask(textFieldData);
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: BeveledRectangleBorder()),
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
