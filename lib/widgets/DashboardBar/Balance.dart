import 'package:flutter/material.dart';
class Balance extends StatelessWidget {
  const Balance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white70,
            child: const Image(
              image: AssetImage("assets/images/iconlogo.png"),
              width: 50,
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("\$40.00",
                style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text("Balance",
                style:
                    TextStyle(fontSize: 15, color: Colors.grey.shade900))
          ],
        )
      ]),
    );
  }
}
