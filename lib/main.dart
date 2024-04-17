import 'package:flutter/material.dart';
import 'package:quiiz/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Moha(),
      ),
    );
  }
}

class Moha extends StatefulWidget {
  const Moha({super.key});

  @override
  State<Moha> createState() => _MohaState();
}

class _MohaState extends State<Moha> {
  List<Widget> scorekeeper = [];
  List<Question> QuestionBank = [
    Question(
        q: 'The Japanese car company Toyota was originally established as a textiles manufacturer',
        a: false),
    Question(
        q: 'The first speeding ticket was in 1896 for driving at 8MPH ',
        a: false),
    Question(
        q: 'Henry Ford designed what was considered to be the world\'s first car',
        a: false),
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  QuestionBank[questionNumber].questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                color: Colors.green,
                height: 50.0,
                width: 50.0,
                child: TextButton(
                  onPressed: () {
                    //the user picked true,
                    bool correctanser =
                        QuestionBank[questionNumber].questionAnswer;
                    if (correctanser == true) {
                      print('User got it right!');
                    } else {
                      print('User got it wrong');
                    }
                    setState(() {
                      questionNumber++;
                    });

                    print(questionNumber);
                  },
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                color: Colors.red,
                height: 50.0,
                width: 50.0,
                child: TextButton(
                  onPressed: () {
                    //the user picked false,
                    bool correctanser =
                        QuestionBank[questionNumber].questionAnswer;
                    if (correctanser == true) {
                      print('User got it right!');
                    } else {
                      print('User got it wrong');
                    }

                    setState(() {
                      questionNumber++;
                    });
                    print(questionNumber);
                  },
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: scorekeeper,
          ),
        ],
      ),
    );
  }
}
