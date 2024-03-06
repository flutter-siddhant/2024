import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override 
  State createState()=> _Assignment5State();
}

class _Assignment5State extends State{
  bool isButtonPressed = false;

  void _handleButtonPress(){
    setState(() {
      isButtonPressed =! isButtonPressed;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 5",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
          ),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _handleButtonPress();
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: isButtonPressed ? Colors.red : Colors.blue,
          ),
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: Text(
              isButtonPressed ? "Click me !!" : "Container Tapped",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            
          )
        ),
      ),
    );
  }
}
