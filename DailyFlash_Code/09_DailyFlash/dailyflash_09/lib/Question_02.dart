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
          "DailyFlash_08",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index){
          return Container(
            height: 70,
            width:200,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.circle_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Center(
                    child: Text(
                      "siddhant",
                    ),
                  ),
                )
              ],
            ),
          );
        }
      )
    );
  }
}