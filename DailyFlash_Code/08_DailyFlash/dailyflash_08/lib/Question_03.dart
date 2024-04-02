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
          "DailyFlash_08",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 1
                )
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 1
                )
              ),
            ),
          ],
        ),
      )
    );
  }
}