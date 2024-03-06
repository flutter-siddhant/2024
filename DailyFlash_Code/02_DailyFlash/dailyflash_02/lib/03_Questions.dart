import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 3",
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
              padding: const EdgeInsets.all(20),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                border: Border.all(width: 2 , color: Colors.purple),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}