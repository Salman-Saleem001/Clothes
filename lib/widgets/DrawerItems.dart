import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';

Row getDrawerItems({String? label = '', IconData? iconData}) {
  return Row(
    children: [
      Icon(
        iconData,
        color: Color(ColorX.white),
      ),
      SizedBox(
        width: 23.5,
      ),
      Text(
        label!,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w900,
          color: Color(ColorX.white),
        ),
      )
    ],
  );
}
