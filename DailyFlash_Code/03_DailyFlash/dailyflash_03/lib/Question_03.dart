import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State createState()=> _Assignment3State();
}

class _Assignment3State extends State{
  bool _isTapped = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Assignment 3",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: InkWell(
          onTap:() {
            setState(() {
              _isTapped = !_isTapped;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: _isTapped ? Colors.green : Colors.red,
              ),
            ),
            child: const Center(
              child: Text(
                "Tap Me",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                ),
              ),
            )
          ),
        ), 
      ) 
    );
  }
}