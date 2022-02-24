import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';

class ButtonText extends StatelessWidget {
  String label;
  int color;
  IconData? iconData;
  ButtonText(
      {Key? key, required this.label, required this.color, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: iconData != null
              ? Icon(
                  iconData,
                  color: Color(ColorX.white),
                )
              : null,
        ),
        SizedBox(
          width: iconData != null ? 21 : 0.0,
        ),
        Text(
          label,
          style: TextStyle(
            color: Color(color),
            fontWeight: FontWeight.w900,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
