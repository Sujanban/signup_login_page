import 'package:day6_login_signup_page/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // theme: ThemeData(
    //   primarySwatch: Colors.green
    // ),
    // debugShowCheckedModeBanner: false,
    initialRoute: "login",
    routes: {"login": (context) => const MyLogin()},
  ));
}
