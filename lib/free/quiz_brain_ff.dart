import 'question_ff.dart'; // You'll need to create this file to define the QuestionFreeFire class.

class QuizBrainFreeFire {
  int _questionNumber = 0;
  List<QuestionFreeFire> _questionBankFreeFire = [
    // True statements
    QuestionFreeFire(
      q: 'Free Fire was developed by Garena.',
      a: true,
    ),
    QuestionFreeFire(
      q: 'The main game mode in Free Fire is called "Battle Royale."',
      a: true,
    ),
    QuestionFreeFire(
      q: 'Free Fire was released in 2017.',
      a: true,
    ),
    QuestionFreeFire(
      q: 'The playable area in Free Fire gradually shrinks over time.',
      a: true,
    ),
    QuestionFreeFire(
      q: 'Free Fire has a character customization feature.',
      a: true,
    ),
    QuestionFreeFire(
      q: 'The maximum number of players in a Free Fire match is 50.',
      a: false,
    ),
    QuestionFreeFire(
      q: 'Free Fire does not have any in-game currency.',
      a: false,
    ),
    QuestionFreeFire(
      q: 'Free Fire allows cross-platform play between mobile and PC players.',
      a: true,
    ),
    QuestionFreeFire(
      q: 'There are no vehicles in Free Fire.',
      a: false,
    ),
    QuestionFreeFire(
      q: 'Free Fire has no character abilities or skills.',
      a: false,
    ),
    // Add more true statements here...

    // False statements
    QuestionFreeFire(
      q: 'Free Fire was developed by Epic Games.',
      a: false,
    ),
    QuestionFreeFire(
      q: 'The main game mode in Free Fire is called "Team Deathmatch."',
      a: false,
    ),
    QuestionFreeFire(
      q: 'Free Fire was released in 2015.',
      a: false,
    ),
    QuestionFreeFire(
      q: 'Free Fire does not have any weapons.',
      a: false,
    ),
    QuestionFreeFire(
      q: 'Free Fire matches have no time limit.',
      a: false,
    ),
    // Add more false statements here...
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBankFreeFire.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0; // Restart quiz once all questions are answered
    }
  }

  String getQuestionText() {
    return _questionBankFreeFire[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBankFreeFire[_questionNumber].questionAnswer;
  }
}
