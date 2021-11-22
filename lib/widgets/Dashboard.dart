// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:paypalclone/widgets/DashboardBar/dashboardbar.dart';
import 'package:paypalclone/widgets/Wallet/wallet.dart';
import 'package:paypalclone/widgets/pay.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget?> pages = [Dashboardbar(), Wallet()];
  int selectedpage = 0;
  void selectpage(int page) {
    setState(() {
      selectedpage = page;
    });
  }

  late BuildContext btx;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(body: pages[selectedpage]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            selectpage(0);
          } else if (index == 2) {
            selectpage(1);
          } else if (index == 1) {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.send,
                                    color: Colors.blue,
                                  )),
                            ),
                            Text("Pay")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.local_atm,
                                    color: Colors.blue,
                                  )),
                            ),
                            Text("Get Paid")
                          ],
                        )
                      ],
                    ),
                  );
                });
          }
        },
        currentIndex: selectedpage,
        unselectedItemColor: Colors.blue.shade900,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Pay"),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Wallet"),
        ],
      ),
    );
  }
}
