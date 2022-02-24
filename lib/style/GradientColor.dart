import 'package:flutter/cupertino.dart';

import 'color.dart';

LinearGradient getLinearGradient() {
  return LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(ColorX.gradientTop),
      Color(ColorX.gradientDown),
    ],
  );
}
