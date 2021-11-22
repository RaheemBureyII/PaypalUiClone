// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Container(
          margin: EdgeInsets.all(20),
          child: Text("sdasdas"),
          height: 200,
          width: 200,
        );
      },
      backgroundColor: Colors.blue,
    );
  }
}
