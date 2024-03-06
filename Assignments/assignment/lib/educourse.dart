import 'dart:html';

import 'package:flutter/material.dart';

class Educourse extends StatefulWidget {
  const Educourse({super.key});

  @override
  State<Educourse> createState() => _EducourseState();
}

class _EducourseState extends State<Educourse>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(205,218,218,1),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.menu_sharp),
                    Spacer(),
                    Icon(Icons.notifications),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to New",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 26.98,
                  ),
                ),
                Text(
                  "Educourse",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 37,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Keyword",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),                    
                    ),
                    suffixIcon: Icon(Icons.search_sharp),
                    filled: true,
                    fillColor: Color.fromRGBO(255,255,255,1),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Course For You",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //
                      Row(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  height: 242,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(
                                      colors: [Color.fromRGBO(197, 4, 98, 1),Color.fromRGBO(80, 3, 112, 1)],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "UX Designer from Scratch",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17,
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Image.asset("assets/images/educourse/1st.png"),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                Container(
                                  height: 242,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(
                                      colors: [Color.fromRGBO(0, 77, 228, 1),Color.fromRGBO(1, 47, 135, 1)],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Design Thinking The Beginner",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17,
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Image.asset("assets/images/educourse/Objects.png"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Course By Category",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/educourse/C-1.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset("assets/images/educourse/C-2.png"),
                              const SizedBox(
                                width: 10,
                                ),
                                Image.asset("assets/images/educourse/C-3.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset("assets/images/educourse/C-4.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ), 
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//[(colors: Color.fromRGBO(197,4,98,1),colors: Color.fromRGBO())]