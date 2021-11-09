import 'choice_properties.dart';

class GameState {
  GameStatus? status;
  ChoiceName? choice;

  GameState.choosing() : status = GameStatus.choosing;

  GameState.choosed(this.choice) : status = GameStatus.choosed;
  GameState.won(this.choice) : status = GameStatus.won;

  GameState.loosed(this.choice) : status = GameStatus.loosed;
  GameState.draw(this.choice) : status = GameStatus.draw;
}

enum GameStatus { choosing, choosed, won, loosed, draw }
