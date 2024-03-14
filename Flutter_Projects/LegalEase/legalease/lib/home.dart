import 'package:flutter/material.dart';
 
 class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
    @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LegalEase Connect",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.black,
      )
    );
  }
}