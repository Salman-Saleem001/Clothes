import 'package:flutter/material.dart';
import 'package:pearlclothes/style/TextFieldHintStyle.dart';
import 'package:pearlclothes/style/TextFieldLabelStyle.dart';

import 'color.dart';

InputDecoration getOutlineBorderDecoration({
  String? hintText = '',
  IconData? prefixicon = null,
  IconData? suffixicon = null,
  int? color = 0xff6342E8,
}) {
  return InputDecoration(
    hintText: hintText,
    errorStyle: TextStyle(
      color: Colors.red,
    ),
    hintStyle: getHintStyle(),
    floatingLabelStyle: getTextStyle(),
    prefixIcon: prefixicon != null
        ? Icon(
            prefixicon,
            color: Color(ColorX.black),
          )
        : null,
    suffixIcon: suffixicon != null
        ? Icon(
            suffixicon,
            color: Color(color!),
          )
        : null,
    labelStyle: getTextStyle(),
    border: InputBorder.none,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        color: Color(ColorX.primary),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        color: Color(ColorX.grey),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1.0,
      ),
    ),
  );
}
