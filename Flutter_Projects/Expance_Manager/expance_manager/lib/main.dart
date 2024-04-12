import 'package:expance_manager/categories.dart';
import 'package:expance_manager/login_screen.dart';
import 'package:expance_manager/register_screen.dart';
import 'package:expance_manager/splash_screen.dart';
import 'package:expance_manager/transaction_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TransactionScreen()
    );
  }
}
