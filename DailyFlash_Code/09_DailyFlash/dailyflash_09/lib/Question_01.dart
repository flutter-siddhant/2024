import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        //centerTitle: true,
        title: const Text(
          "DailyFlash_08",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ],
      )
    );
  }
}