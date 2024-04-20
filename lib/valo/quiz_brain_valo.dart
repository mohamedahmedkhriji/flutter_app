import 'question_valo.dart';

class QuizBrainvalo {
  int _questionNumber = 0;
  List<Questionvalo> _questionBankvalo = [
    Questionvalo(
      q: 'Is Jett an agent in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Spike the objective in Valorant matches?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant developed by Riot Games?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Brimstone an agent known for his utility in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Sage an agent known for her healing abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Raze an agent known for her explosives in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Viper an agent known for her toxic abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Phoenix an agent known for his fire abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Omen an agent known for his teleportation abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Cypher an agent known for his surveillance abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Sova an agent known for his reconnaissance abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Killjoy an agent known for her turret and alarmbot in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Reyna an agent known for her healing from kills in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Skye an agent known for her support and healing abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Astra an agent known for her astral form and gravity well in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Yoru an agent known for his dimensional drift and flash abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Kay/O an agent known for his suppression and flash abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Breach an agent known for his seismic blast and aftershock abilities in Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its innovative "buy phase" at the beginning of each round?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s primary game mode called "Unrated"?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its unique blend of tactical gameplay and hero shooter elements?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant set in a world where powerful individuals called "Radiants" possess extraordinary abilities?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its robust ping system that allows for effective communication even without voice chat?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its frequent balance updates aimed at ensuring fair and competitive gameplay?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s competitive mode known for its sophisticated ranking system that assesses individual and team performance?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its vibrant esports scene with professional players competing in tournaments worldwide?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s lore universe expanded through cinematics, comics, and in-game events?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its emphasis on team composition and strategic agent selection?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s art style characterized by its sleek, futuristic aesthetic?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its dynamic map design that offers a variety of strategic options for players?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s agent roster constantly evolving with the addition of new agents and the rebalancing of existing ones?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s community known for its passion and dedication to the game, leading to vibrant discussions and content creation?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its robust anti-cheat system that ensures fair and competitive gameplay?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its wide range of skins and cosmetic items that allow players to customize their agents and weapons?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its responsive and attentive development team that actively listens to player feedback?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s competitive scene supported by Riot Games with official tournaments and prize pools?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its dedicated player base that contributes to a thriving and active community?',
      a: true,
    ),
    Questionvalo(
      q: 'Is VCT (Valorant Champions Tour) the official esports tournament for Valorant?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant a tactical shooter game with unique agent abilities?',
      a: true,
    ),
    // Additional questions:
    Questionvalo(
      q: 'Is Valorant free-to-play?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant available on consoles such as Xbox and PlayStation?',
      a: false,
    ),
    Questionvalo(
      q: 'Is Valorant set in a near-future Earth?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its high skill ceiling and tactical gameplay?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant a team-based tactical shooter?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its distinct agent abilities and gunplay mechanics?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant set in a universe where powerful individuals known as Radiants wield magical powers?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s competitive mode known as "Ranked"?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its esports scene with professional tournaments and leagues?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant frequently updated with new agents, maps, and gameplay features?',
      a: true,
    ),
    // Additional questions (continued):
    Questionvalo(
      q: 'Is Valorant optimized for high-performance gameplay on a variety of PC setups?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its emphasis on team coordination and communication?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant set in a dystopian future where powerful corporations vie for control?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s competitive mode known for its stringent anti-cheat measures?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s lore expanded through in-game cinematics and comics?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its emphasis on precise aim and strategic positioning?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s in-game currency called "Radianite Points"?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its diverse cast of agents from around the world?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant known for its dynamic map design that encourages strategic play?',
      a: true,
    ),
    Questionvalo(
      q: 'Is Valorant\'s lore universe filled with mysterious organizations and hidden agendas?',
      a: true,
    ),
    // Add more questions as needed
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBankvalo.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0; // Restart quiz once all questions are answered
    }
  }

  String getQuestionText() {
    return _questionBankvalo[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBankvalo[_questionNumber].questionAnswer;
  }
}
