import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/ButtonStyle.dart';
import 'package:pearlclothes/style/TextButtonContent.dart';
import 'package:pearlclothes/style/TextFieldHintStyle.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/style/getContainerDecoration.dart';
import 'package:pearlclothes/widgets/ButtonText.dart';
import 'package:pearlclothes/widgets/CartHeadWidget.dart';
import 'package:pearlclothes/widgets/ScreenHeading.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorX.black),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: getContainerDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 74,
              ),
              CartHeadWidget(),
              SizedBox(
                height: 99,
              ),
              Container(
                height: 116,
                width: 116,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(116 / 2),
                  color: Color(ColorX.lightPink).withOpacity(0.4),
                ),
                child: Text(
                  '!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34.5,
                    color: Color(ColorX.pink),
                  ),
                ),
              ),
              SizedBox(
                height: 39,
              ),
              Center(
                child: ScreenHeading(
                    text: 'Congrats! Your Order has\n      been placed',
                    colorx: ColorX.black),
              ),
              SizedBox(
                height: 33,
              ),
              Center(
                child: Text(
                  'Your items has been placcd and is on\nit’s way to being processed',
                  style: getHintStyle(),
                ),
              ),
              SizedBox(
                height: 37,
              ),
              SizedBox(
                height: 56,
                width: double.infinity,
                child: FlatButton(
                  color: Color(ColorX.primary),
                  shape: getRoundedRectangleBorder(),
                  onPressed: () {},
                  child: ButtonText(
                    iconData: Icons.shopping_cart_outlined,
                    label: 'Please Try Again',
                    color: ColorX.white,
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              TextButton(
                onPressed: () {},
                child: getTextButtonContent(
                    label: 'Back to home', icon: Icons.arrow_back),
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
