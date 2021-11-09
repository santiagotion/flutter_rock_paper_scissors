import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/helper/choice_properties.dart';
import 'package:rock_paper_scissors_game/home/widgets/single_options_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final ChoiceName choiceName;
  final ChoiceName? computerChoice;
  const Result({
    Key? key,
    required this.choiceName,
    this.computerChoice = ChoiceName.none,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                          textStyle: TextStyle(
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
                          textStyle: TextStyle(
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
          ],
        ),
      ),
    );
  }
}
