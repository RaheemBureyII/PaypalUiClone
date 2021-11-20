import 'package:flutter/material.dart';

class RecentPurchase extends StatelessWidget {
  final String amount;
  final String date;
  final String name;
  final String image;
  RecentPurchase(this.amount, this.date, this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text(date,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade900))
              ],
            ),
          ],
        ),
        Text(amount,
            style: TextStyle(
              fontSize: 20,
            )),
      ],
    );
  }
}
