import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 1",
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
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 5 , color: Colors.red),
                borderRadius: BorderRadius.circular(20),
              ),
              child:const Center(
              child: Text(
                "Siddhant", 
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
