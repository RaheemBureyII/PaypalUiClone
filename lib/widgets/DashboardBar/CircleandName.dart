import 'package:flutter/material.dart';

class CircleandName extends StatelessWidget {
  final String name;
  CircleandName(this.name);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        radius: 30,
      ),
      SizedBox(height: 5),
      Text(name,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14))
    ]);
  }
}