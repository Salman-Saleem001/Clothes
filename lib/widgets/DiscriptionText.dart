import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscriptionText extends StatelessWidget {
  String discription;
  int colorx;
  TextDecoration? textDecoration;
  DiscriptionText(
      {Key? key,
      required this.discription,
      required this.colorx,
      this.textDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      discription,
      style: TextStyle(
        decoration: textDecoration,
        color: Color(colorx),
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
    );
  }
}
