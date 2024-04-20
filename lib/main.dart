import 'package:flutter/material.dart';
import 'package:quiiz/dachboord/home.dart';
import 'lol/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyHomePage(),
      ),
    );
  }
}
