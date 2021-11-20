import 'package:flutter/material.dart';
import 'package:paypalclone/widgets/DashboardBar/CircleandName.dart';
class SendAgain extends StatelessWidget {
  const SendAgain({
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
          "Send again",
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleandName("John \n Brown"),
            SizedBox(width: 20),
            CircleandName("Mary \n Jane"),
            SizedBox(width: 20),
            Column(children: [
              CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.search,
                  size: 50,
                ),
                backgroundColor: Colors.blue.shade100,
              ),
              SizedBox(height: 5),
              Text("Search",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14))
            ])
          ],
        )
      ]),
    );
  }
}