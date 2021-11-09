import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rock_paper_scissors_game/helper/choice_properties.dart';
import 'package:rock_paper_scissors_game/home/controller/result_contoller.dart';
import 'package:rock_paper_scissors_game/home/widgets/single_options_widget.dart';
import 'package:provider/provider.dart';

class OptionsChoices extends StatelessWidget {
  const OptionsChoices({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SvgPicture.asset(
                  "assets/images/bg-pentagon.svg",
                ),
              ),
            ),
            Column(
              children: [
                SingleOption(
                  color: GetChoiceProperties().getColor(ChoiceName.scissors),
                  icon: GetChoiceProperties().getIcon(ChoiceName.scissors),
                  onTaped: () {
                    Provider.of<ResultController>(context, listen: false)
                        .userTaped(ChoiceName.scissors);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleOption(
                      color: GetChoiceProperties().getColor(ChoiceName.spock),
                      icon: GetChoiceProperties().getIcon(ChoiceName.spock),
                      onTaped: () {
                        Provider.of<ResultController>(context, listen: false)
                            .userTaped(ChoiceName.spock);
                      },
                    ),
                    SingleOption(
                      color: GetChoiceProperties().getColor(ChoiceName.paper),
                      icon: GetChoiceProperties().getIcon(ChoiceName.paper),
                      onTaped: () {
                        Provider.of<ResultController>(context, listen: false)
                            .userTaped(ChoiceName.paper);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleOption(
                      color: GetChoiceProperties().getColor(ChoiceName.lizard),
                      icon: GetChoiceProperties().getIcon(ChoiceName.lizard),
                      onTaped: () {
                        Provider.of<ResultController>(context, listen: false)
                            .userTaped(ChoiceName.lizard);
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SingleOption(
                      color: GetChoiceProperties().getColor(ChoiceName.rock),
                      icon: GetChoiceProperties().getIcon(ChoiceName.rock),
                      onTaped: () {
                        Provider.of<ResultController>(context, listen: false)
                            .userTaped(ChoiceName.rock);
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
