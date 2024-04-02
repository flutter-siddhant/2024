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
          "DailyFlash_02",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(
          //   height: 30,
          // ),
          Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/Photo.jpg'), 
                  fit: BoxFit.cover, 
                ),
              ),
              ),
            ),
            const SizedBox(
            height: 30,
            ),
            ElevatedButton(
              onPressed: (){
              },
              child: const Text(
                "Click here for Resume",
                style: TextStyle(
                  fontSize: 20.0, 
                  color: Colors.white
                ), 
              )
            ), 
        ]
      ),
    );
  }
}