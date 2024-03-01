/*
import 'package:flutter/material.dart';

class Flash1 extends StatefulWidget{
  const Flash1({super.key});

  @override
  State<Flash1> createState() => _Flash1State();
}

class _Flash1State extends State<Flash1> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        
        // APPBAR TEXT IN THE MIDDLE
        centerTitle: true,
        title:const Text(
          "Flash No. 1",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,

        // WE USE ACTIONS TO ADD THE ICONS IN THE APPBAR
        actions: const [
          Icon(Icons.settings_rounded),
          SizedBox(
            width: 7,
          ),
          Icon(Icons.notifications_active_rounded),
          SizedBox(
            width: 7,
          ),
          Icon(Icons.bluetooth_audio_rounded),
        ],
      ),
      body: Center(
        child:
          Container(
            width: 300,
            height: 300,
            //color: Colors.blue,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
              border: Border.all(
                color: Colors.red,
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(5, 5),
                )
              ]
            ),
          )
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class Flash1 extends StatefulWidget{
  const Flash1({super.key});

  @override
  State<Flash1> createState() => _Flash1State();
}

class _Flash1State extends State<Flash1>{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(

        // ICON AT THE START OF THE APPBAR 
        leading: const Icon(Icons.home),

        // DISPLAY TITLE AT THE CENTER
        centerTitle : true,

        title: const Text(
          "Flash No 1",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),

        backgroundColor: Colors.black,

        // ICONS AT THE END OF THE APPBAR
        actions: const[
          Icon(Icons.settings_rounded),
          SizedBox(
            width: 7,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 7,
          ),
          Icon(Icons.light_mode_rounded),
        ],

        // ROUND RECTANGULAR BORDER AT THE BOTTOM
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.red,
              width: 3,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 10),
                blurRadius: 5,
              )
              ]
          ),
        ),
      ),
    );
  }
}