import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _QuestionBank = [
    Question(
        q: 'Is League of Legends developed and published by Blizzard Entertainment?',
        a: false),
    Question(q: 'Was League of Legends officially released in 2012?', a: false),
    Question(
        q: 'Is Twisted Treeline the most popular map in League of Legends?',
        a: false),
    Question(
        q: 'Are there three roles in League of Legends: Top, Middle, and Jungle?',
        a: false),
    Question(
        q: 'Are there over 200 champions available to play in League of Legends?',
        a: false),
    Question(
        q: 'Is Jinx one of the original champions released in League of Legends?',
        a: false),
    Question(
        q: 'Are the jungle monsters on Summoner\'s Rift: Blue Sentinel, Red Brambleback, Rift Herald, and Elder Dragon?',
        a: false),
    Question(q: 'Is Darius a mage champion in League of Legends?', a: false),
    Question(
        q: 'Is Sona known for her ability to summon powerful minions called "Heimerdinger"?',
        a: false),
    Question(
        q: 'Can players earn Blue Essence by playing champions in League of Legends?',
        a: false),
    Question(
        q: 'Is destroying the enemy Nexus the main objective in League of Legends matches?',
        a: false),
    Question(
        q: 'Does League of Legends have a limited universe with minimal background stories for each champion?',
        a: false),
    Question(
        q: 'Is League of Legends primarily played on consoles such as Xbox and PlayStation?',
        a: false),
    Question(
        q: 'Was Urf the Manatee introduced as a permanent playable champion in League of Legends?',
        a: false),
    Question(
        q: 'Is the Herald one of the jungle monsters in League of Legends?',
        a: false),
    Question(
        q: 'Are there different elemental drakes that grant unique bonuses when defeated in League of Legends?',
        a: false),
    Question(
        q: 'Is "Blind Pick" a popular game mode in League of Legends?',
        a: false),
    Question(
        q: 'Is xPeke considered one of the greatest League of Legends players of all time?',
        a: false),
    Question(
        q: 'Is the Elder Dragon often referred to as "Elder" by players in League of Legends?',
        a: false),
    Question(
        q: 'Is "Doran\'s Ring" an item commonly purchased by support champions in League of Legends?',
        a: false),
    // More difficult questions below:
    Question(
        q: 'Was the League of Legends lore universe known as "Runeterra" named after the game\'s original beta name?',
        a: true),
    Question(
        q: 'Was "Proving Grounds" the original map used for professional League of Legends tournaments?',
        a: true),
    Question(
        q: 'Was "League of Legends" initially inspired by a custom map for StarCraft called "Aeon of Strife"?',
        a: true),
    Question(
        q: 'Is "Hecarim" a centaur-like champion known as the Shadow of War in League of Legends?',
        a: true),
    Question(
        q: 'Is "Talon" a champion known as the Blade\'s Shadow, specializing in stealth and assassination?',
        a: true),
    Question(
        q: 'Is "Zed" a champion known as the Master of Shadows, skilled in high mobility and burst damage?',
        a: true),
    Question(
        q: 'Was the "League of Legends World Championship" first held in 2011?',
        a: true),
    Question(
        q: 'Is "Garen" a champion known as the Might of Demacia, wielding a massive sword and wearing distinctive armor?',
        a: true),
    Question(
        q: 'Is "Kha\'Zix" a champion known as the Voidreaver, evolving unique abilities throughout the match?',
        a: true),
    Question(
        q: 'Is "Vayne" a champion known as the Night Hunter, hunting evil creatures with her silver crossbow?',
        a: true),
    Question(
        q: 'Is "Aatrox" a champion known as the Darkin Blade, once a powerful warlord before his fall from grace?',
        a: true),
    Question(
        q: 'Is "Yasuo" a champion known as the Unforgiven, seeking redemption for a crime he did not commit?',
        a: true),
    Question(
        q: 'Is "Singed" a champion known as the Mad Chemist, leaving behind a toxic trail as he moves?',
        a: true),
    Question(
        q: 'Was "Miss Fortune" a champion once known as Sarah Fortune, seeking revenge for her family\'s murder?',
        a: true),
    Question(
        q: 'Is "Fiddlesticks" a champion known as the Ancient Fear, terrifying enemies with his unsettling appearance and abilities?',
        a: true),
    Question(
        q: 'Is "Cho\'Gath" a champion known as the Terror of the Void, growing in size and strength with each feast?',
        a: true),
    Question(
        q: 'Is "Thresh" a champion known as the Chain Warden, collecting the souls of his victims with his lantern?',
        a: true),
    Question(
        q: 'Was "Ryze" a champion once known as Tyrus, wielding powerful arcane magic and seeking to protect the world from dark forces?',
        a: true),
    Question(
        q: 'Is "Jhin" a champion known as the Virtuoso, obsessed with perfection and infamy?',
        a: true),
  ];
  void nextQuestion() {
    if (_questionNumber < _QuestionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_QuestionBank.length);
  }

  String getQuestionText() {
    return _QuestionBank[_questionNumber].questionText;
  }

  bool getCorrectAnser() {
    return _QuestionBank[_questionNumber].questionAnswer;
  }
}
