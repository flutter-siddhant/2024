import 'dart:async';
import 'package:expance_manager/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 250,
            ),
            Container(
              width: 144,
              height:144,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromRGBO(234, 238, 235, 1),
              ),
              child: Image.asset(
                'assets/images/logo.png', 
                width: 100, 
                height: 100,
              ),
            ),
            const Spacer(),
            Text(
              "Expance Manager",
              style: GoogleFonts.poppins(
                fontSize: 16, 
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ]
        )          
      ),
    );
  }
}