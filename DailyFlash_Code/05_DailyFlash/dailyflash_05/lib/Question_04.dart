import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{
  const Assignment4 ({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Assignmnet 4",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 1.0,
                    ),
                    color: Colors.brown,
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
                    color: Colors.purple,
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