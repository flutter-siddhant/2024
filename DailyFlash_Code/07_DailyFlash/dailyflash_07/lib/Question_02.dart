import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        //centerTitle: true,
        title: const Text(
          "DailyFlash_07",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            )
          ),
          child: const Row(
            children: [
              Icon(
                Icons.star,
                size: 40,
                color: Colors.orange,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Rating 4.5",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}