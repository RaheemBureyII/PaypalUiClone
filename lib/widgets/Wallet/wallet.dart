// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paypalclone/widgets/Wallet/walletoption.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  List<Widget> pages = [WalletOption(), _rewards(), _activity()];
  int selectedpage = 0;
  void selectpage(int page) {
    setState(() {
      selectedpage = page;
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
            width: 350,
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
                    minWidth: 350 * 0.3,
                    height: 50,
                    child: Text("Wallet"),
                    highlightColor: Colors.white,
                    onPressed: () {
                      selectpage(0);
                    },
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minWidth: 350 * 0.3,
                    height: 50,
                    child: Text("Rewards"),
                    highlightColor: Colors.white,
                    onPressed: () {
                      selectpage(1);
                    },
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minWidth: 350 * 0.3,
                    height: 50,
                    child: Text("Activity"),
                    highlightColor: Colors.white,
                    onPressed: () {
                      selectpage(2);
                    },
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





Widget _rewards() {
  return Container(
    child: Center(
      child: Text("sadasd"),
    ),
  );
}

Widget _activity() {
  return Container(
    child: Center(
      child: Text("asdasdasd"),
    ),
  );
}
