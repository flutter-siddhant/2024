import 'dart:async';
import 'package:codeland_ui/final.dart';
import 'package:flutter/material.dart';

// Replace this with the path to your login screen
//import 'package:codeland_ui/login_screen.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Image.asset(
          'assets/images/splash.png', // Replace with your logo path
          width: 200, // Adjust logo size as needed
          height: 200,
        ),
      ),
    );
  }
}
