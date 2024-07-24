import 'package:flutter/material.dart';

class TaskInfo extends StatelessWidget {
  final int done ;
  final int deu  ;
  const TaskInfo({super.key,this.done=0,this.deu=0});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'deu to :',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5,),
            Container(
              alignment: Alignment.center,
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Text(
                '$deu',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'finished :',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5,),
            Container(
              alignment: Alignment.center,
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Text(
                '$done',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
