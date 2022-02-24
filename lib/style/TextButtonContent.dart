import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

Row getTextButtonContent({String? label = '', IconData? icon}) {
  return Row(
    children: [
      Icon(
        icon,
        color: Color(ColorX.black),
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        label!,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 12,
            color: Color(ColorX.black)),
      ),
    ],
  );
}
