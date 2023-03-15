// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  String varTitle;
  bool varStatus;
  TodoCard({super.key, required this.varTitle, required this.varStatus});
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .9,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[800],
        ),
        height: 70,
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              varTitle,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              width: 200,
            ),
            Icon(
              varStatus ? Icons.check : Icons.close,
              color: varStatus ? Colors.green : Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
