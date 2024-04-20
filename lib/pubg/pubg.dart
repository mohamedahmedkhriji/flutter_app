import 'package:flutter/material.dart';
import 'package:quiiz/dachboord/home.dart';
import 'package:quiiz/pubg/quiz_brain_pubg.dart';

QuizBrainPUBG quizBrainvalo = QuizBrainPUBG();

class quiizpubg extends StatelessWidget {
  const quiizpubg({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Pubg(),
      ),
    );
  }
}

class Pubg extends StatefulWidget {
  const Pubg({Key? key});

  @override
  State<Pubg> createState() => _PubgState();
}

class _PubgState extends State<Pubg> {
  List<Icon> scorekeeper = [];

  void checkAnswer(bool userPickAnswer) {
    bool correctAnswer = quizBrainvalo.getCorrectAnswer();
    setState(() {
      if (userPickAnswer == correctAnswer) {
        scorekeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        scorekeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      quizBrainvalo.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'PUBG',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrainvalo.getQuestionText(),
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
                child: TextButton(
                  onPressed: () {
                    //the user picked true,
                    checkAnswer(true);
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
                child: TextButton(
                  onPressed: () {
                    //the user picked false,
                    checkAnswer(false);
                  },
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: scorekeeper,
            ),
          ),
        ],
      ),
    );
  }
}
