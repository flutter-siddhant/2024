import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{
  const Assignment4({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        //centerTitle: true,
        title: const Text(
          "DailyFlash_04",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all( 
                color: Colors.black, 
                width: 1.0
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(15.0),
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all( 
                      color: Colors.black, 
                      width: 1.0
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 200,
                    width: 180,
                    color: Colors.red,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all( 
                      color: Colors.black, 
                      width: 1.0
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 200,
                    width: 180,
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}


// Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     const SizedBox(
      //       height: 70,
      //     ),
      //     Row(
      //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.purple,
      //         ),
      //       ],
      //     ),
      //     const Spacer(),
      //     Row(
      //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.orange,
      //         ),
      //         Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.green,
      //         ),
      //       ],
      //     ),
      //     const SizedBox(
      //       height: 70,
      //     ),
      //   ]
      // ),