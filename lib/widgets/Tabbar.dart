import 'package:flutter/material.dart';

class TabBarr extends StatelessWidget {
  final bool active;
  final IconData icon;

  TabBarr(this.active, this.icon);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: active == true ? Colors.black : Colors.white, width: 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
