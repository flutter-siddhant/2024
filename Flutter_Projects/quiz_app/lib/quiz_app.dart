import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class SingleQuestionModel{
  final String? question;
  final List<String>? options;
  final int? answerIndex;
  const SingleQuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizAppState extends State<QuizApp> {
  void validatePage() {
    selectedIndex = -1;
  }

  MaterialStateProperty<Color?>? checkAnswer(int option){
    int answer = allQuestions[questionIndex].answerIndex;
    if(option == answer && selectedIndex == option){
    score++;
    }
    if(option == answer && selectedIndex == option ||
        (selectedIndex != -1 && option == answer)){
          return const MaterialStatePropertyAll(Colors.green);
    }
    if(option == selectedIndex){
      return const MaterialStatePropertyAll(Colors.red);
    }
    return const MaterialStatePropertyAll(Colors.orange);
  }

  int selectedIndex = -1;
  int questionIndex = 0;
  int score = 0;

  List allQuestions = [
    const SingleQuestionModel(
      question: "For What Flutter is used as?",
      options: [
        "A programming langauge",
        "A Web Browser",
        "A SDK",
        "A DataBase",
      ],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "Who Developed Flutter?",
      options: [
        "Facebook",
        "Google",
        "Microsoft",
        "Apple",
      ],
      answerIndex: 1,
    ),
    const SingleQuestionModel(
      question: "Which Language is used for flutter development?",
      options: [
        "JavaScript",
        "Dart",
        "Python",
        "Kotlin",
      ],
      answerIndex: 1,
    ),
    const SingleQuestionModel(
      question: "With what you can make a scrollable list?",
      options: [
        "Column",
        "ListView",
        "ScrollView",
        "Text",
      ],
      answerIndex: 1,
    ),
    const SingleQuestionModel(
      question: "what is the core widget for allignment in flutter?",
      options: [
        "Create",
        "Row",
        "Start",
        "Center",
      ],
      answerIndex: 3,
    ),
  ];

  int screens = 0;
  @override
  Widget build(BuildContext context) {
    if (screens == 0){
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/start.jpg',
              width: 500,
              height: 500,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  screens = 1;
                });
              },
              style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(
                  Size(150, 50),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Colors.orange,
                ),
              ),
              child: const Text(
                "Start Quiz",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar:const BottomAppBar(
          child: SizedBox(
            height: 50,
            child: Center(
              child: Text(
                'Developed with ❤️ (Orion)',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            )
          ),
        )
      ); 
    }
    if(screens == 1){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            "Mind Meld",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.black
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions: ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: SizedBox(
                width: 350,
                height: 60,
                child: Text(
                  allQuestions[questionIndex].question,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          // *************** OPTION 1 ***************
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedIndex = 0;
                });
              },
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(
                  Size(300,50),
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.black,
                ),
                backgroundColor: checkAnswer(0),
              ),
              child: Text(
                allQuestions[questionIndex].options[0],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          // **************** OPTION 2 ****************
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedIndex = 1;
                });
              },
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(
                  Size(300,50),
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.black,
                ),
                backgroundColor: checkAnswer(1),
              ),
              child: Text(
                allQuestions[questionIndex].options[1],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          // **************** OPTION 3 ****************
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedIndex = 2;
                });
              },
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(
                  Size(300,50),
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.black,
                ),
                backgroundColor: checkAnswer(2),
              ),
              child: Text(
                allQuestions[questionIndex].options[2],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          // **************** OPTION 4 ****************
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedIndex = 3;
                });
              },
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(
                  Size(300,50),
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.black,
                ),
                backgroundColor: checkAnswer(3),
              ),
              child: Text(
                allQuestions[questionIndex].options[3],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            /*const SizedBox(
              height: 20,
            ),*/
            Image.asset(
              "assets/images/bottom.jpg",
              width: 200,
              height: 180,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Row(
            children: [
              Text(
                "Next",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.navigate_next_sharp,
                size: 30,
              )
            ],
          ),
          backgroundColor: Colors.orange,
          tooltip: 'Choose the option',
          onPressed:(){
            setState(() {
              if(questionIndex < allQuestions.length && selectedIndex != -1) {
                questionIndex++;
              }
              if(questionIndex == allQuestions.length){
                screens = 2;
              }
              validatePage();
            });
          }
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/success.jpg",
                width: 300,
                height:300,
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  const Text(
                    'Congratulation!!!',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height:20,
                  ),
                  Container(
                    width: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        "You have successfully completed the Quiz",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Score: $score",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(150, 50),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.orange,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    questionIndex = 0;
                    screens = 0;
                    score = 0;
                  });
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Restart",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.refresh,
                      size: 24.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            ]
          ),
        ),
      );
    }
  }
}