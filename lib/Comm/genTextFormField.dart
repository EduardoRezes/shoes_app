import 'package:flutter/material.dart';

class getTextFormFiel extends StatelessWidget {
  TextEditingController? controller;
  String? txtName;
  IconData? icon;
  bool obscureText;
  TextInputType keyboardType;

  getTextFormFiel(
      {this.controller,
      this.txtName,
      this.icon,
      this.obscureText = false,
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.black),
          ),
          prefixIcon: Icon(icon),
          labelText: txtName,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }
}
