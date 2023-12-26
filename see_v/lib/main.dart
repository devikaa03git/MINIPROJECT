import 'dart:async';

import 'package:flutter/material.dart';
import 'package:see_v/home_page.dart';
import 'package:see_v/pages/login.dart';
import 'package:see_v/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSplash = true;
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        isSplash = false;
      });
    });
  }

  // ignore: unused_element
  void _navigateToHome(BuildContext context) {
    // Navigate to the home page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isSplash) {
      return const SplashScreen();
    }
    return const Login();

    // return isSplash
    //     ? SplashScreen() : SizedBox();
    // : isLoggedIn
    //     ? HomePage() : SizedBox()
  }
}
