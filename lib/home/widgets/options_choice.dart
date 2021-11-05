import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rock_paper_scissors_game/home/widgets/single_options_widget.dart';

class OptionsChoices extends StatelessWidget {
  final Widget? icon;
  final Color color;

  const OptionsChoices({Key? key, this.icon, required this.color})
      : super(key: key);
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
                child: SvgPicture.asset("assets/images/bg-pentagon.svg",
                    semanticsLabel: 'bg'),
              ),
            ),
            Column(
              children: [
                SingleOption(
                  color: HSLColor.fromAHSL(1.0, 40, .84, .53).toColor(),
                  icon: SvgPicture.asset("assets/images/icon-scissors.svg",
                      semanticsLabel: 'bg'),
                  onTaped: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleOption(
                      color: HSLColor.fromAHSL(1.0, 189, .58, .57).toColor(),
                      icon: SvgPicture.asset("assets/images/icon-spock.svg",
                          semanticsLabel: 'bg'),
                      onTaped: () {},
                    ),
                    SingleOption(
                      color: HSLColor.fromAHSL(1.0, 230, .89, .65).toColor(),
                      icon: SvgPicture.asset("assets/images/icon-paper.svg",
                          semanticsLabel: 'bg'),
                      onTaped: () {},
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
                      color: HSLColor.fromAHSL(1.0, 261, .72, .63).toColor(),
                      icon: SvgPicture.asset("assets/images/icon-lizard.svg",
                          semanticsLabel: 'bg'),
                      onTaped: () {},
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SingleOption(
                      color: HSLColor.fromAHSL(1.0, 349, .70, .56).toColor(),
                      icon: SvgPicture.asset("assets/images/icon-rock.svg",
                          semanticsLabel: 'bg'),
                      onTaped: () {},
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
