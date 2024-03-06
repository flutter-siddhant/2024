import 'package:dailyflash_02/03_Questions.dart';
import 'package:dailyflash_02/04_Question.dart';
import 'package:dailyflash_02/05_Question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment4(),
    );
  }
}
