import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/ButtonStyle.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/style/getContainerDecoration.dart';
import 'package:pearlclothes/widgets/ButtonText.dart';
import 'package:pearlclothes/widgets/DiscriptionText.dart';
import 'package:pearlclothes/widgets/ScreenHeading.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: getContainerDecoration(color: ColorX.black),
          child: Stack(
            children: [
              Image.asset(
                'asset/image/EntryImage1.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Image.asset(
                'asset/image/VectorEffects1.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Pearl',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 44,
                            color: Color(ColorX.black),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ScreenHeading(
                                text:
                                    'Create your fashion\n    in your own way',
                                colorx: ColorX.black,
                              ),
                              DiscriptionText(
                                discription:
                                    'Each men and women has their own style, Geeta\n\t\t\t\t\t\tthelp you to create yourunique style.',
                                colorx: ColorX.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 56,
                          width: 222,
                          child: OutlineButton(
                            padding: EdgeInsets.zero,
                            shape: getRoundedRectangleBorder(),
                            onPressed: () {
                              Navigator.pushNamed(context, '/LoginScreen');
                            },
                            borderSide: getBorderSide(colorx: ColorX.black),
                            child: ButtonText(
                              color: ColorX.black,
                              label: 'LOG IN',
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 21,
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.0,
                                  color: Color(ColorX.white).withOpacity(0.3),
                                ),
                              ),
                            ),
                            Text(
                              'OR',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(ColorX.black),
                              ),
                            ),
                            Container(
                              width: 21,
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.0,
                                  color: Color(ColorX.white).withOpacity(0.3),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 56,
                          width: 222,
                          child: FlatButton(
                            color: Color(ColorX.primary),
                            shape: getRoundedRectangleBorder(),
                            onPressed: () {
                              Navigator.pushNamed(context, '/SignUpScreen');
                            },
                            child: ButtonText(
                              label: 'REGISTER',
                              color: ColorX.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
