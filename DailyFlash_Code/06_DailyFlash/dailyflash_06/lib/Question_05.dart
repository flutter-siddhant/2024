import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _StateAssignment5();

}

class _StateAssignment5 extends State<Assignment5> {

  int selectedIndex = -1;

  @override 
  
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        //centerTitle: true,
        title: const Text(
          "DailyFlash_05",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for(int i=0;i<3;i++)
              GestureDetector(
                onTap: () => setState(() {
                  selectedIndex =  i;
                }),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0), // Spacing
                  height: 100.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: selectedIndex == i ? Colors.red : Colors.white,
                    border: Border.all(color:Colors.black),
                  ),
                ),
              )
          ],
        ),
      )
    );
  }
}
  
