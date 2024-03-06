import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 2",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
          ),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
                //border: Border.all(width: 5 , color: Colors.red),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
              ),
              child: const Center(
                child: Text(
                  "Siddhant", 
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}