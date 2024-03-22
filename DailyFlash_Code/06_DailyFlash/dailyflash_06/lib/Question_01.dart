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
          "DailyFlash_01",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/Photo.jpg",
            fit: BoxFit.fill,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Siddhant",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                  Text(
                    "Siddhant satkar you need to study hard and practice more otherwise you will not able to write a good code.",
                    style: TextStyle(
                      fontSize: 15,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}