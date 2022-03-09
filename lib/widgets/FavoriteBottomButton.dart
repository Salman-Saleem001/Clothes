import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/ButtonStyle.dart';
import 'package:pearlclothes/style/color.dart';

import 'ButtonText.dart';

class FavoriteBottomButton extends StatelessWidget {
  IconData? preIcon;
  String label, route;
  double? price;
  int? backGroundColor;
  FavoriteBottomButton({
    Key? key,
    required this.label,
    this.preIcon,
    this.price,
    required this.route,
    this.backGroundColor = 0xffFFFFFF,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool check = false;
    if (price != null) {
      check = true;
    }
    return Container(
      padding: EdgeInsets.only(top: 30),
      height: 86,
      color: Color(backGroundColor!),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: FlatButton(
          color: Color(ColorX.primary),
          shape: getRoundedRectangleBorder(),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 98,
              ),
              ButtonText(
                iconData: preIcon,
                label: label,
                color: ColorX.white,
              ),
              SizedBox(
                width: 70,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  color: check ? Color(ColorX.navyBlue) : Color(ColorX.primary),
                  child: check
                      ? Text(
                          '${price}',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(ColorX.white)),
                        )
                      : null),
            ],
          ),
        ),
      ),
    );
  }
}
