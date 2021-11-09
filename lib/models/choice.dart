import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Choice {
  final String label;
  final Color color;
  final Widget icon;

  Choice(this.label, this.color, this.icon);

  List<Choice> choiceList = [
    Choice(
      "Scissors",
      const HSLColor.fromAHSL(1.0, 40, .84, .53).toColor(),
      SvgPicture.asset(
        "assets/images/icon-scissors.svg",
      ),
    ),
    Choice(
      "Spock",
      const HSLColor.fromAHSL(1.0, 189, .58, .57).toColor(),
      SvgPicture.asset(
        "assets/images/icon-spock.svg",
      ),
    ),
    Choice(
      "Paper",
      const HSLColor.fromAHSL(1.0, 230, .89, .65).toColor(),
      SvgPicture.asset(
        "assets/images/icon-paper.svg",
      ),
    ),
    Choice(
      "Lizard",
      HSLColor.fromAHSL(1.0, 189, .58, .57).toColor(),
      SvgPicture.asset(
        "assets/images/icon-lizard.svg",
      ),
    ),
    Choice(
      "Rock",
      HSLColor.fromAHSL(1.0, 189, .58, .57).toColor(),
      SvgPicture.asset(
        "assets/images/icon-rock.svg",
      ),
    )
  ];
}
