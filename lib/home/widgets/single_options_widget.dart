import 'package:flutter/material.dart';

class SingleOption extends StatelessWidget {
  final Widget? icon;
  final Color color;
  final Function onTaped;

  const SingleOption(
      {Key? key, this.icon, required this.color, required this.onTaped})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTaped();
      },
      child: Container(
        height: MediaQuery.of(context).size.width * 0.25,
        width: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(80),
          border: Border.all(width: 12, color: color),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: icon,
        ),
      ),
    );
  }
}
