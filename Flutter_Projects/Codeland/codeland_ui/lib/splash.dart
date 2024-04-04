// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; // for preloading assets
// void main() {
//   // Preload logo image before showing the splash screen
//   WidgetsFlutterBinding.ensureInitialized();

//   precacheImage(const AssetImage('assets/images/splash.png'), (BuildContext context) {
//   // This empty function body is intentional. 
//   // You don't need to perform any actions after preloading in this case.
// });

//   // precacheImage(const AssetImage('assets/images/splash.png'), () {});

//   // precacheImage(const AssetImage('assets/images/splash.png'), null); 
//   runApp(MyApp());
// }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: SplashScreen(),
// //     );
// //   }
// // }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 2), () {
//       // Navigate to login screen after 2 seconds
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.asset(
//           'assets/images/splash.png', 
//         ),
//       ),
//     );
//   }
// }

// // class LoginScreen extends StatelessWidget {
// //   // Login screen logic here
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Login'),
// //       ),
// //       body: Center(
// //         child: Text('This is the login screen'),
// //       ),
// //     );
// //   }
// // }


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
