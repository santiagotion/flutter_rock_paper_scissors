import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/game_logic/game_logic.dart';
import 'package:rock_paper_scissors_game/helper/choice_properties.dart';
import 'package:rock_paper_scissors_game/helper/game_status.dart';

class ResultController with ChangeNotifier {
  GameState gameState = GameState.choosing();

  int score = 0;

  ChoiceName? userChoice;

  ChoiceName? computerChoice;

  int get getScore {
    return score;
  }

  ChoiceName? get userChoosed {
    return userChoice;
  }

  ChoiceName? get computerChoosed {
    return computerChoice;
  }

  GameState get gameStatus {
    return gameState;
  }

  getResult(ChoiceName userChoice, ChoiceName computerChoice) {
    gameState = GameLogic().getResult(userChoice, computerChoice);
    getActualScore(gameState);

    notifyListeners();
  }

  userTaped(ChoiceName userChoosed) {
    userChoice = userChoosed;

    gameState = GameState.choosed(userChoosed);

    notifyListeners();

    Timer(const Duration(milliseconds: 1000), () async {
      List<ChoiceName> choiceList = [
        ChoiceName.scissors,
        ChoiceName.lizard,
        ChoiceName.paper,
        ChoiceName.rock,
        ChoiceName.spock,
      ];
      final _random = Random();

      var randomChoice = choiceList[_random.nextInt(choiceList.length)];

      computerChoice = randomChoice;

      gameState = getResult(userChoosed, randomChoice);
    });
  }

  resetGame() {
    gameState.status = GameStatus.choosing;
    notifyListeners();
  }

  getActualScore(GameState gameState) {
    switch (gameState.status) {
      case GameStatus.choosing:
        break;
      case GameStatus.choosed:
        break;
      case GameStatus.won:
        score += 1;

        notifyListeners();
        break;
      case GameStatus.loosed:
        score -= 1;
        notifyListeners();
        break;
      case GameStatus.draw:
        break;
      default:
        break;
    }
  }
}
