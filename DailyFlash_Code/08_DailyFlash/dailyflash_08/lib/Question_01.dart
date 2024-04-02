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
        actions: [
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () {  
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Colors.yellow
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Colors.pink
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                )
              ], 
            ),
            const SizedBox(
              height: 20,
            ),
            //const Spacer(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Colors.purple
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Colors.blue
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}