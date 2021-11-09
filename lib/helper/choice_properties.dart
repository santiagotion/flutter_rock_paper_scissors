import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetChoiceProperties {
  Color getColor(ChoiceName name) {
    Color choiceColor;
    switch (name) {
      case ChoiceName.scissors:
        choiceColor = const HSLColor.fromAHSL(1.0, 40, .84, .53).toColor();
        break;

      case ChoiceName.spock:
        choiceColor = const HSLColor.fromAHSL(1.0, 189, .58, .57).toColor();
        break;

      case ChoiceName.paper:
        choiceColor = const HSLColor.fromAHSL(1.0, 230, .89, .65).toColor();
        break;

      case ChoiceName.lizard:
        choiceColor = const HSLColor.fromAHSL(1.0, 261, .72, .63).toColor();
        break;

      case ChoiceName.rock:
        choiceColor = const HSLColor.fromAHSL(1.0, 349, .70, .56).toColor();
        break;
      case ChoiceName.none:
        choiceColor = Colors.transparent;
        break;
    }

    return choiceColor;
  }

  Widget getIcon(ChoiceName name) {
    switch (name) {
      case ChoiceName.scissors:
        return SvgPicture.asset(
          "assets/images/icon-scissors.svg",
        );

      case ChoiceName.spock:
        return SvgPicture.asset(
          "assets/images/icon-spock.svg",
        );

      case ChoiceName.paper:
        return SvgPicture.asset(
          "assets/images/icon-paper.svg",
        );
      case ChoiceName.lizard:
        return SvgPicture.asset(
          "assets/images/icon-lizard.svg",
        );
      case ChoiceName.rock:
        return SvgPicture.asset(
          "assets/images/icon-rock.svg",
        );
      case ChoiceName.none:
        return Container();
    }
  }

  String getChoiceString(ChoiceName name) {
    String choiceString;
    switch (name) {
      case ChoiceName.scissors:
        choiceString = "scissors";
        break;

      case ChoiceName.spock:
        choiceString = "spock";
        break;

      case ChoiceName.paper:
        choiceString = "paper";
        break;

      case ChoiceName.lizard:
        choiceString = "lizard";
        break;

      case ChoiceName.rock:
        choiceString = "rock";
        break;
      case ChoiceName.none:
        choiceString = "none";
        break;
    }

    return choiceString;
  }
}

class CoicePropertie {
  ChoiceName name;

  CoicePropertie.scissors() : name = ChoiceName.scissors;

  CoicePropertie.spock() : name = ChoiceName.scissors;

  CoicePropertie.paper() : name = ChoiceName.scissors;
  CoicePropertie.lizard() : name = ChoiceName.scissors;

  CoicePropertie.rock() : name = ChoiceName.scissors;
  CoicePropertie.none() : name = ChoiceName.none;
}

enum ChoiceName { scissors, spock, paper, lizard, rock, none }
