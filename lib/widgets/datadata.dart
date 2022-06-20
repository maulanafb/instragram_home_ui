import 'package:flutter/material.dart';

class DataData extends StatelessWidget {
  final String title;
  final String value;

  DataData(this.title, this.value);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              value,
            ),
          ],
        ),
      ],
    ));
  }
}
