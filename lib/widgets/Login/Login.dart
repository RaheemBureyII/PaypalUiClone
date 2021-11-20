// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paypalclone/widgets/Dashboard.dart';
import 'package:paypalclone/widgets/Login/Textfieldwidget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isloggedin=false;
  void loginning()
  {
    setState(() {
      isloggedin=!isloggedin;
    });
  }
  @override
  Widget build(BuildContext context) {
    return !isloggedin?Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Image(
            image: AssetImage("assets/images/iconlogo.png"),
            width: 100,
          ),
          Textfieldwidget(email, false, "Email address"),
          SizedBox(height: 50),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Textfieldwidget(password, true, "Password"),
            SizedBox(height: 15),
            InkWell(
                child: Text(
              "Forgot password?",
              style: TextStyle(
                  color: Colors.blue[900], fontWeight: FontWeight.bold),
            ))
          ]),
          SizedBox(height:30),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide.none),
            color: Colors.blue[900],
            onPressed: () {
              loginning();
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
            ),
            minWidth: double.infinity,
            height: 40,
          ),
          SizedBox(height: 10,),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blue.shade900)),
            color: Colors.white,
            onPressed: () {
              loginning();
            },
            child: Text(
              "Sign up",
              style: TextStyle(color: Colors.blue[900],fontSize: 15,fontWeight: FontWeight.bold),
            ),
            minWidth: double.infinity,
            height: 40,
          )
        ]),
      ),
    ):Dashboard();
  }
}


