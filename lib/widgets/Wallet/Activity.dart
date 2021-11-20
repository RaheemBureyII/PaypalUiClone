// ignore_for_file: avoid_unnecessary_containers, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:paypalclone/widgets/DashboardBar/RecentPurchases.dart';

class Activity extends StatelessWidget {
  const Activity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Completed",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Nov 2021",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              RecentPurchase("-\$20.0", "12 Nov- Purchase",
                  "Respawn Entertainment", "assets/images/respawn.jpg"),
              SizedBox(
                height: 30,
              ),
              Text(
                "Aug 2021",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              RecentPurchase("+\$40.0", "30 August- Money Recieved",
                  "Malcolm Baxter", "assets/images/goku.jpg"),
              SizedBox(
                height: 30,
              ),
              Text(
                "Oct 2020",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              RecentPurchase("+\$40.0", "30 August- Money Recieved",
                  "John Brown", "assets/images/robot.jpg"),
              SizedBox(
                height: 10,
              ),
              RecentPurchase("-\$30.0", "30 August- Refund Sent", "John Brown",
                  "assets/images/robot.jpg"),
              SizedBox(
                height: 10,
              ),
              RecentPurchase("+\$30.0", "30 August- Money Recieved",
                  "John Brown", "assets/images/robot.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
