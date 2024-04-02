import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _StateAssignment2();
}
class _StateAssignment2 extends State<Assignment2>{

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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        "assets/images/Pizza.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        "assets/images/Pizza.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        "assets/images/Pizza.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        "assets/images/Pizza.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        "assets/images/Pizza.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        "assets/pizza2.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}