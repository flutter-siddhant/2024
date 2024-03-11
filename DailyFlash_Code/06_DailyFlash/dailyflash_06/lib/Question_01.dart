import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "DailyFlash_01",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/Photo.jpg",
            fit: BoxFit.fitWidth,
          ),
          
            // Column( 
            //   children: [
            //     Text(
            //       "Siddhant Satkar",
            //       style: TextStyle(
            //         color: Colors.red,
            //       ),
            //     ),
            //     Expanded(
            //       child: Text(
            //         "Hello i am siddhant satkar, check purpose"
            //       )
            //     )
            //   ],
            // ),
          
          

        ],
      ),
    );
  }
}