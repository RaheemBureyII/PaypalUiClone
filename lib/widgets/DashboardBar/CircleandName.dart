// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class CircleandName extends StatelessWidget {
  final String name;
  final String image;
  CircleandName(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // ignore: prefer_const_constructors
      CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 30,
      ),
      SizedBox(height: 5),
      Text(name, textAlign: TextAlign.center, style: TextStyle(fontSize: 14))
    ]);
  }
}
