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
  
  List<Widget?> pages = [Dashboardbar(), Pay(), Wallet()];
  int selectedpage = 0;
  void selectpage(int page) {
    setState(() {
      selectedpage = page;
      

    });
  }

 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: pages[selectedpage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectpage,
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
