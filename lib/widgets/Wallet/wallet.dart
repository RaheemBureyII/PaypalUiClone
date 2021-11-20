// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paypalclone/widgets/Wallet/Activity.dart';
import 'package:paypalclone/widgets/Wallet/Rewards.dart';
import 'package:paypalclone/widgets/Wallet/walletoption.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  List<Widget> pages = [WalletOption(), Rewards(), Activity()];
  int selectedpage = 0;
  Color clr0 = Colors.grey.shade300;
  Color clr1 = Colors.grey.shade300;
  Color clr2 = Colors.grey.shade300;

  void selectpage(int page) {
    setState(() {
      selectedpage = page;
      if (page == 0) {
        clr0 = Colors.white;
        clr1 = Colors.grey.shade300;
        clr2 = Colors.grey.shade300;
      } else if (page == 1) {
        clr0 = Colors.grey.shade300;
        clr1 = Colors.white;
        clr2 = Colors.grey.shade300;
      } else if (page == 2) {
        clr0 = Colors.grey.shade300;
        clr1 = Colors.grey.shade300;
        clr2 = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Container(
            height: 50,
            width: 360,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minWidth: 360 / 3,
                    height: 50,
                    child: Text("Wallet"),
                    highlightColor: Colors.white,
                    color: clr0,
                    onPressed: () {
                      selectpage(0);
                    },
                    elevation: 0,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minWidth: 360 / 3,
                    height: 50,
                    child: Text("Rewards"),
                    highlightColor: Colors.white,
                    color: clr1,
                    onPressed: () {
                      selectpage(1);
                    },
                    elevation: 0,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minWidth: 360 / 3,
                    height: 50,
                    child: Text("Activity"),
                    highlightColor: Colors.white,
                    color: clr2,
                    onPressed: () {
                      selectpage(2);
                    },
                    elevation: 0,
                  ),
                ]),
          ),
          Container(
            child: pages[selectedpage],
          )
        ],
      ),
    );
  }
}
