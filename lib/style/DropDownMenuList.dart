import 'package:flutter/material.dart';

import 'color.dart';

Container getDropdownMenuItem({String items = ''}) {
  return Container(
    margin: EdgeInsets.only(right: 17),
    child: Text(
      items,
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w900,
          color: Color(ColorX.black)),
    ),
  );
}
