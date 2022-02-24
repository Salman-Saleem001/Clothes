import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? val = false;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 20.0,
      ),
      child: Checkbox(
          value: val,
          checkColor: Color(ColorX.primary),
          activeColor: Color(ColorX.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.3),
          ),
          side: BorderSide(
            width: 1.0,
            color: Color(ColorX.black),
          ),
          onChanged: (bool? value) {
            setState(() {
              val = value;
            });
          }),
    );
  }
}
