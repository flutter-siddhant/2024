import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
  State createState()=> _Assignment4State();
}

class _Assignment4State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Assignment 4",
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
                  color: Colors.amber,
                  width: 2
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const[
                  BoxShadow(
                    color: Colors.yellow,
                    blurRadius: 10.0,
                    offset: Offset(10,15),
                  )
                ]
              ),
            ),
          ),
        ]
      ),
    );
  }
}