import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/helper/choice_properties.dart';
import 'package:rock_paper_scissors_game/helper/game_status.dart';
import 'package:rock_paper_scissors_game/home/controller/result_contoller.dart';
import 'package:rock_paper_scissors_game/home/widgets/single_options_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
  Widget setGameStatusWidgets(BuildContext context, GameState gameState) {
    switch (gameState.status) {
      case GameStatus.choosed:
        return Text(
          "Waitting for the house...",
          style: GoogleFonts.barlowSemiCondensed(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      case GameStatus.won:
        return Column(
          children: const [
            ResultLabel(
              label: "YOU WIN",
            ),
            PlayAgainBtn()
          ],
        );

      case GameStatus.loosed:
        return Column(
          children: const [
            ResultLabel(
              label: "YOU LOOSE",
            ),
            PlayAgainBtn()
          ],
        );

      case GameStatus.choosing:
        return Container();

      case GameStatus.draw:
        return Column(
          children: const [
            ResultLabel(
              label: "IT' A DRAW",
            ),
            PlayAgainBtn()
          ],
        );

      default:
        return Container();
    }
  }

  final ChoiceName choiceName;
  final ChoiceName? computerChoice;
  const Result({
    Key? key,
    required this.choiceName,
    this.computerChoice = ChoiceName.none,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    GameState gameState = Provider.of<ResultController>(context).gameStatus;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SingleOption(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.width * 0.35,
                      color: GetChoiceProperties().getColor(choiceName),
                      icon: GetChoiceProperties().getIcon(choiceName),
                      onTaped: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "YOU PICKED",
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * 0.5),
                          ),
                        ),
                        SingleOption(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.width * 0.35,
                          color:
                              GetChoiceProperties().getColor(computerChoice!),
                          icon: GetChoiceProperties().getIcon(computerChoice!),
                          onTaped: () {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "THE HOUSE PICKED",
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: setGameStatusWidgets(context, gameState),
            )
          ],
        ),
      ),
    );
  }
}

class PlayAgainBtn extends StatelessWidget {
  const PlayAgainBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ResultController>(context, listen: false).resetGame();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "PLAY AGAIN",
            style: GoogleFonts.barlowSemiCondensed(
              textStyle: TextStyle(
                color: const HSLColor.fromAHSL(1.0, 237, 0.49, 0.15).toColor(),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          height: 55,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
    );
  }
}

class ResultLabel extends StatelessWidget {
  final String label;
  const ResultLabel({Key? key, this.label = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: GoogleFonts.barlowSemiCondensed(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
