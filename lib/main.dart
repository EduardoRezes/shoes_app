import 'package:app_shopping/pages/CartPage.dart';
import 'package:app_shopping/pages/Homepage.dart';
import 'package:app_shopping/pages/ItemPage.dart';
import 'package:app_shopping/pages/LoginPage.dart';
import 'package:app_shopping/pages/SignupForm.dart';
import 'package:app_shopping/pages/ListUsers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: LoginPage(),
      routes: {
        "/": (context) => LoginPage(),
        "signupForm": (context) => SignupForm(),
        "homePage": (context) => Homepage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "listUser": (context) => ListUsers(),
      },
    );
  }
}
