import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/home/widgets/header.dart';
import 'package:rock_paper_scissors_game/home/widgets/option_widget.dart';
import 'package:rock_paper_scissors_game/home/widgets/rules.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSceen extends StatefulWidget {
  @override
  _HomeSceenState createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> {
  Widget _showRules(BuildContext context) {
    return Rules();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
          const HSLColor.fromAHSL(1.0, 214, 0.47, 0.23).toColor(),
          const HSLColor.fromAHSL(1.0, 237, 0.49, 0.15).toColor(),
        ], radius: 2, center: Alignment.topCenter)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(alignment: Alignment.topCenter, child: Header()),
                Option(
                  color: HSLColor.fromAHSL(1.0, 40, .84, .53).toColor(),
                ),
                // Rules()
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _showRules(context),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "RULES",
                      style: GoogleFonts.barlowSemiCondensed(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
