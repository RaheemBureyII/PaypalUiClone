import 'package:flutter/material.dart';
import 'package:paypalclone/widgets/DashboardBar/RecentPurchases.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Recent Activity",
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(height: 8),
        Column(
          children: [
            RecentPurchase("-\$20.0","12 Nov- Purchase","Respawn Entertainment"),
            SizedBox(height:10),
            RecentPurchase("+\$40.0","30 August- Money Recieved","Malcolm Baxter"),
          ],
        )
      ]),
    );
  }
}

