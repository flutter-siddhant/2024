import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Assignment 2",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/application_add_images.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: Text(
              "Flutter",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}