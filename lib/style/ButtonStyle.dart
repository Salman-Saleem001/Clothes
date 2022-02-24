import 'package:flutter/cupertino.dart';

RoundedRectangleBorder getRoundedRectangleBorder() {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(56),
    ),
  );
}

BorderSide getBorderSide({int? colorx = 0}) {
  return BorderSide(
    width: 3.0,
    style: BorderStyle.solid,
    color: Color(colorx!),
  );
}
