import 'package:flutter/cupertino.dart';

import 'color.dart';

LinearGradient getLinearGradient() {
  return LinearGradient(
    begin: FractionalOffset.topLeft,
    end: FractionalOffset.bottomRight,
    colors: [
      Color(ColorX.primary).withOpacity(1),
      Color(ColorX.gradientTop).withOpacity(1),
      Color(ColorX.gradientDown).withOpacity(1),
    ],
  );
}
