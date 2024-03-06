import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget{
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          "Assignment 5",
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
      body: Center(
        child: Container(
            height: 300,
            width: 300,
            //color: Colors.blue,
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color:Colors.red,width: 5),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(5, 5),
                  blurRadius: 0.9

                ),
              ]
            ),
        ),
      )     
    );
  }
}