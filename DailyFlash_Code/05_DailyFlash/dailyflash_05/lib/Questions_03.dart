import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Assignment 3",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/Photo.jpg",
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 250,
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Text(
                "user-name : Dev.Siddhant",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),  
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}