import 'package:flutter/cupertino.dart';

import 'GradientColor.dart';
import 'color.dart';

BoxDecoration getGradientBoxDecoration() {
  return BoxDecoration(
    color: Color(ColorX.primary),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    gradient: getLinearGradient(),
  );
}
