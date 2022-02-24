import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';

class CartHeadWidget extends StatelessWidget {
  String? lable;
  int? color;
  CartHeadWidget({Key? key, this.lable = '', this.color = 0xff181725})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Color(ColorX.black),
          ),
        ),
        Expanded(child: SizedBox()),
        Container(
          margin: EdgeInsets.only(right: 170),
          child: Text(
            lable!,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: Color(color!)),
          ),
        ),
      ],
    );
  }
}
