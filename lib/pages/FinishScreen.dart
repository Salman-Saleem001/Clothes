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

class FinishScreen extends StatelessWidget {
  const FinishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(ColorX.black),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        decoration: getContainerDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 74,
            ),
            CartHeadWidget(),
            SizedBox(
              height: 53,
            ),
            Center(
              child: Image.asset(
                'asset/image/Finish1.PNG',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 79,
            ),
            Center(
              child: ScreenHeading(
                  text:
                      'Congrats! Your Order has\n\t\t\t\t\t\t\t\t been placed',
                  colorx: ColorX.black),
            ),
            SizedBox(
              height: 33,
            ),
            Center(
              child: Text(
                'Your items has been placcd and is on\n\t\t\t\t\t\t\t\t it’s way to being processed',
                style: getHintStyle(),
              ),
            ),
            SizedBox(
              height: 60,
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
                  label: 'Track Order',
                  color: ColorX.white,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: FlatButton(
                color: Color(ColorX.primary),
                shape: getRoundedRectangleBorder(),
                onPressed: () {},
                child: ButtonText(
                  label: 'Continue shopping',
                  color: ColorX.white,
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: getTextButtonContent(
                      label: 'Back to home', icon: Icons.arrow_back),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    ));
  }
}
