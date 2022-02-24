import 'package:flutter/cupertino.dart';

import 'color.dart';

Stack getVisaLogo({double? height = 0.0, double? width = 0.0}) {
  return Stack(
    alignment: AlignmentDirectional.bottomEnd,
    children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height!),
          color: Color(ColorX.yellow),
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 51 - 19),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(ColorX.orange),
        ),
      ),
    ],
  );
}
