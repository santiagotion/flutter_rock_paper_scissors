import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Option extends StatelessWidget {
  final Widget? icon;
  final Color color;

  const Option({Key? key, this.icon, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(80),
        border: Border.all(width: 15, color: color),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: icon ??
            SvgPicture.asset("assets/images/icon-scissors.svg",
                semanticsLabel: 'Logo'),
      ),
    );
  }
}
