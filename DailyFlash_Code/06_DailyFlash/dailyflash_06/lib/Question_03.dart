import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        //centerTitle: true,
        title: const Text(
          "DailyFlash_03",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
              ],
            ),
            const Spacer(),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
          ]
        ),
      ),
    );
  }
}