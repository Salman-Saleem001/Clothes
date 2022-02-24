import 'package:flutter/cupertino.dart';
import 'package:pearlclothes/style/GradientColor.dart';

BoxDecoration getGradientBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    gradient: getLinearGradient(),
  );
}
