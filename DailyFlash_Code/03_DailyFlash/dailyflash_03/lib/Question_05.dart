import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State createState()=> _Assignment5State();
}

class _Assignment5State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Assignment 5",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  stops: [0.5,0.1],
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}