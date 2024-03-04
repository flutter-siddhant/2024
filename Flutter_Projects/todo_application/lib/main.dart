import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoApp extends StatefulWidget{
  const ToDoApp({super.key});

  @override
  State createState() => _ToDoModelState();
}

class _ToDoModelState extends State<ToDoApp>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  Color.fromRGBO(111,81,255,1),
      body: Container(
        padding: const EdgeInsets.only(
          top: 45,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Text(
              "Good Morning",
              style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Color.fromRGBO(255,255,255,1),
              )
            ),
            Text(
              "Siddhant",
              style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color.fromRGBO(255,255,255,1),
              )
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
            child:
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217,1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "CREATE A TODO LIST",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255,1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )
                    ),
                  )
                ],
              )
            ),
            ),
          ]
        ) 
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(89,57,241,1),
        onPressed: (){},
        child: const Icon(
          size: 46,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

