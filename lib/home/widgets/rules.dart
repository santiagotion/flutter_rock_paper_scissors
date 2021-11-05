import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Rules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "RULES",
              style: GoogleFonts.barlowSemiCondensed(
                textStyle: TextStyle(
                  color: const HSLColor.fromAHSL(1.0, 229, .25, .31).toColor(),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Image.asset(
                'assets/images/image-rules-bonus.png',
                fit: BoxFit.cover,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                  height: 60,
                  child: SvgPicture.asset("assets/images/icon-close.svg",
                      semanticsLabel: 'Close')),
            )
          ],
        ),
      ),
    );
  }
}
