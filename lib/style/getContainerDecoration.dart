import 'package:flutter/cupertino.dart';

BoxDecoration getContainerDecoration({int color = 0xffFFFFFF}) {
  return BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40),
      topRight: Radius.circular(40),
    ),
    color: Color(color),
  );
}
