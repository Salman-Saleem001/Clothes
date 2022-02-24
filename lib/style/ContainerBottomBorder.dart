import 'package:flutter/cupertino.dart';

import 'color.dart';

BoxDecoration getContainerBottomBoder() {
  return BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 0.5,
        style: BorderStyle.solid,
        color: Color(ColorX.tagColor),
      ),
    ),
  );
}
