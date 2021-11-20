import 'package:flutter/material.dart';

class Rewards extends StatelessWidget {
  const Rewards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            Icons.emoji_events,
            size: 110,
            color: Colors.yellow.shade700,
          ),
          Text(
            "Discover new PayPal\n rewards and view your\n saved offers here",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
