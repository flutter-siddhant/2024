import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Profile Information",
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
            const Text(
              "user-name : Dev.Siddhant",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Contact No - 788735566",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}