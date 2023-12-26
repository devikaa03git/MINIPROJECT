import 'dart:async';

import 'package:flutter/material.dart';
import 'package:see_v/home_page.dart';
import 'package:see_v/pages/login.dart';
import 'package:see_v/pages/signup_page.dart';
import 'package:see_v/pages/splash_screen.dart';
import 'package:see_v/update_info.dart';
import 'package:see_v/update_info1.dart';
import 'package:see_v/update_info2.dart';
import 'package:see_v/update_info3.dart';
import 'package:see_v/update_info4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSplash = true;
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        isSplash = false;
      });
    });
  }

  void _navigateToSignup(BuildContext context) {
    // Navigate to the signup page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignupPage()),
    );
  }

  void _navigateToHome(BuildContext context) {
    // Navigate to the home page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isSplash) {
      return SplashScreen();
    }
    return Login();

    // return isSplash
    //     ? SplashScreen() : SizedBox();
    // : isLoggedIn
    //     ? HomePage() : SizedBox()
  }
}
