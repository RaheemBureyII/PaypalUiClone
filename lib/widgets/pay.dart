// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              context: context,
              builder: (context) {
                return Container(
                    height: 100,
                    margin: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.send),
                                ),
                                backgroundColor: Colors.grey.shade300,
                              ),
                              SizedBox(height: 10),
                              Text("Pay")
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.local_atm),
                                ),
                                backgroundColor: Colors.grey.shade300,
                              ),
                              SizedBox(height: 10),
                              Text("GetPaid")
                            ])
                      ],
                    ));
              });
        },
        child: Text("stuff"));
  }
}
