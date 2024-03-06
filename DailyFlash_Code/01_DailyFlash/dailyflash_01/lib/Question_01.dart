import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      //  leading: const Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          "Assignment 1",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
        actions: const[
          Icon(Icons.login_sharp),
        ],
      ),
    );
  }
}