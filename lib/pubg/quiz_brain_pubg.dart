import 'question_pubg.dart'; // You'll need to create this file to define the Questionpubg class.

class QuizBrainPUBG {
  int _questionNumber = 0;
  List<Questionpubg> _questionBankPUBG = [
    // True statements
    Questionpubg(
      q: 'PUBG stands for "PlayerUnknown\'s Battle Game."',
      a: true,
    ),
    Questionpubg(
      q: 'PUBG was initially released as an early access game in 2017.',
      a: true,
    ),
    Questionpubg(
      q: 'PUBG Corporation is a subsidiary of Epic Games.',
      a: false,
    ),
    Questionpubg(
      q: 'Erangel is the name of the original map in PUBG.',
      a: true,
    ),
    Questionpubg(
      q: 'PUBG was developed and published by Bluehole Studio.',
      a: true,
    ),
    Questionpubg(
      q: 'The "Blue Zone" in PUBG refers to the safe zone.',
      a: false,
    ),
    Questionpubg(
      q: 'PUBG has only one game mode, which is battle royale.',
      a: false,
    ),
    Questionpubg(
      q: 'PUBG Mobile was developed by Tencent Games.',
      a: true,
    ),
    Questionpubg(
      q: 'In PUBG, players can choose to play in first-person or third-person perspective.',
      a: true,
    ),
    Questionpubg(
      q: 'PUBG was the first battle royale game to gain widespread popularity.',
      a: false,
    ),
    // Add more true statements here...

    // False statements
    Questionpubg(
      q: 'PUBG was released in 2015.',
      a: false,
    ),
    Questionpubg(
      q: 'PUBG is a single-player game.',
      a: false,
    ),
    Questionpubg(
      q: 'There are no vehicles in PUBG.',
      a: false,
    ),
    Questionpubg(
      q: 'PUBG has no in-game voice chat feature.',
      a: false,
    ),
    Questionpubg(
      q: 'PUBG does not have any customization options for characters.',
      a: false,
    ),
    // Add more false statements here...
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBankPUBG.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0; // Restart quiz once all questions are answered
    }
  }

  String getQuestionText() {
    return _questionBankPUBG[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBankPUBG[_questionNumber].questionAnswer;
  }
}
