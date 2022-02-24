import 'package:flutter/material.dart';

class ScreenHeading extends StatelessWidget {
  String text;
  int colorx;
  ScreenHeading({Key? key, required this.text, required this.colorx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: Color(colorx),
      ),
    );
  }
}
