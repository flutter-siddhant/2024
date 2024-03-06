import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          "Assignment 3",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
        actions: const[
          Icon(Icons.login_sharp),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 20,
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40)
          )
        ),
      ),
    );
  }
}