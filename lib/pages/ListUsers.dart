import 'dart:ffi';

import 'package:app_shopping/model/user.dart';
import 'package:app_shopping/dataBase/db.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../dataBase/db.dart';

class ListUsers extends StatelessWidget {
  // User _user = User();
  // List<User> _users = [];
  // DatabaseHelper _db = DatabaseHelper();

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _nickNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confPasswordController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   _db.listUsers().then((value) {
  //     setState(() {
  //       _users = value;
  //     });
  //   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Usuario"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  "Lista de Usuarios",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Image.asset(
                  'images/login.png',
                  height: 200,
                  width: 200,
                ),
                Text(
                  "Shoes App",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold),
                ),
                //Uso da controler para manipular o campo de nome
              ],
            ),
          ),
        ),
      ),
    );
  }
  // _ListUserState createState() => _ListUserState();
}
