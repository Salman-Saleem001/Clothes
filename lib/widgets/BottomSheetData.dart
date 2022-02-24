import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/ContainerBottomBorder.dart';
import 'package:pearlclothes/style/color.dart';

Container getBottomSheetData({String? label = '', String? method = ''}) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(bottom: 24),
    decoration: getContainerBottomBoder(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label!,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: Color(ColorX.black),
          ),
        ),
        GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                method!,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: Color(ColorX.primary),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(ColorX.primary),
                size: 14,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
