import 'package:flutter/material.dart';

import 'dart:math' as math;

class SendMoney extends StatelessWidget {
  const SendMoney({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      height: 200,
      decoration: BoxDecoration(
          color: Colors.yellow[600],
          borderRadius: BorderRadius.circular(10)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Personalize payments with \n new stickers,emojies and\n more",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Send money now",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Transform.rotate(
                angle: math.pi / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage("assets/images/paypalimage1.jpg"),
                    width: 100,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20)
          ]),
    );
  }
}

