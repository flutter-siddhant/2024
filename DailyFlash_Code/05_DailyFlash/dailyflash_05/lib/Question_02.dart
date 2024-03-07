import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2 ({super.key});

  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Assignmnet 2",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amber,
                    width: 1.0,
                  ),
                ),
                child: Image.asset("assets/images/application_add_images.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amber,
                    width: 1.0,
                  ),
                ),
                child: Image.asset("assets/images/start.jpg"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amber,
                    width: 1.0,
                  ),
                ),
                child: Image.asset("assets/images/flutter-developer2.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}