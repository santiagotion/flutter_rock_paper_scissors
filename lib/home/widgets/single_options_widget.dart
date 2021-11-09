import 'package:flutter/material.dart';

class SingleOption extends StatelessWidget {
  final Widget? icon;
  final Color color;
  final Function onTaped;
  final double? width;
  final double? height;

  const SingleOption(
      {Key? key,
      this.icon,
      required this.color,
      required this.onTaped,
      this.width,
      this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTaped();
      },
      child: Container(
        height: height ?? MediaQuery.of(context).size.width * 0.25,
        width: width ?? MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.width * 0.5),
          border: Border.all(width: 12, color: color),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: icon,
        ),
      ),
    );
  }
}
