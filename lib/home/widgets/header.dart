import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  width: 3,
                  color:
                      const HSLColor.fromAHSL(1.0, 217, .16, .45).toColor())),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 60,
                  child: SvgPicture.asset("assets/images/logo-bonus.svg",
                      semanticsLabel: 'Logo')),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SCORE",
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                color:
                                    const HSLColor.fromAHSL(1.0, 229, .64, .46)
                                        .toColor(),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "12",
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                color:
                                    const HSLColor.fromAHSL(1.0, 229, .25, .31)
                                        .toColor(),
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
