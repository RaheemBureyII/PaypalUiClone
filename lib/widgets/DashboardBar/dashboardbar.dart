// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:paypalclone/widgets/DashboardBar/Balance.dart';
import 'package:paypalclone/widgets/DashboardBar/SendAgain.dart';
import 'package:paypalclone/widgets/DashboardBar/SendMoney.dart';
import 'package:paypalclone/widgets/DashboardBar/recentactivity.dart';
class Dashboardbar extends StatefulWidget {
  @override
  _DashboardbarState createState() => _DashboardbarState();
}

class _DashboardbarState extends State<Dashboardbar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.grey.shade100,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 50,
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Hello! \n Welcome back",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              )),
          Balance(),
          SizedBox(height: 20),
          SendAgain(),
          SendMoney(),
          RecentActivity(),
        ]),
      ),
    );
  }
}






