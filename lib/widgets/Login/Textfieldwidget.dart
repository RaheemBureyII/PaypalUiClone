import 'package:flutter/material.dart';

class Textfieldwidget extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool obscuretype;

  Textfieldwidget(this.controller,this.obscuretype,this.hinttext);
 

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hinttext,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blue))),
      obscureText: obscuretype,
      autocorrect: false,
      enableSuggestions: false,
    );
  }
}
