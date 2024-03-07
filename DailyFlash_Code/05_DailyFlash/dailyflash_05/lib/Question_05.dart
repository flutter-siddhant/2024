import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget{
  const Assignment5 ({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Assignmnet 5",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 1.0,
                    ),
                  ),
                  child: Image.asset("assets/images/flutter-developer2.png"),
                ),
                const Spacer(),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 1.0,
                    ),
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 1.0,
                    ),
                    color: Colors.green,
                  ),      
                ),
              ],
            ),
          ),
      ),
    );
  }
}