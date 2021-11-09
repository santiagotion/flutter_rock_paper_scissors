import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/game_logic/game_logic.dart';
import 'package:rock_paper_scissors_game/helper/choice_properties.dart';
import 'package:rock_paper_scissors_game/helper/game_status.dart';

class ResultController with ChangeNotifier {
  GameState gameState = GameState.choosing();

  ChoiceName? userChoice;

  ChoiceName? computerChoice;

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

    notifyListeners();
  }

  userTaped(ChoiceName userChoosed) {
    userChoice = userChoosed;

    gameState = GameState.choosed(userChoosed);

    notifyListeners();

    Timer(const Duration(milliseconds: 800), () async {
      List<ChoiceName> choiceList = [
        ChoiceName.scissors,
        ChoiceName.lizard,
        ChoiceName.paper,
        ChoiceName.rock,
        ChoiceName.spock,
      ];
      final _random = Random();

      var randomChoice = choiceList[_random.nextInt(choiceList.length)];

      gameState = getResult(userChoosed, ChoiceName.spock);

      print(userChoosed);
      print(randomChoice);
    });
  }

  resetGame() {
    gameState.status = GameStatus.choosing;
  }
}
