import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/TextFieldLabelStyle.dart';
import 'package:pearlclothes/style/TextFormFieldStyle.dart';
import 'package:pearlclothes/style/VisaCardLogo.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/style/getContainerDecoration.dart';
import 'package:pearlclothes/widgets/CartHeadWidget.dart';
import 'package:pearlclothes/widgets/ExpiryAndCvcTextField.dart';

class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorX.black),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: getContainerDecoration(),
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 74,
                ),
                CartHeadWidget(
                  lable: 'Credit/ Debit card',
                ),
                SizedBox(
                  height: 43,
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(ColorX.navyXBlue).withOpacity(1),
                            Color(ColorX.purpleBlue).withOpacity(1),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 19, vertical: 31.01),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              getVisaLogo(height: 40, width: 40),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            '5757   4747   5757   4747',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(ColorX.white)),
                          ),
                          SizedBox(
                            height: 51,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Vira Singh Sharma',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(ColorX.white)),
                              ),
                              Text(
                                '${07}/${21}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(ColorX.white)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 37,
                ),
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Color(ColorX.tagColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Your Name',
                  style: getTextStyle(),
                ),
                SizedBox(
                  height: 13,
                ),
                TextFormField(
                  onChanged: null,
                  keyboardType: TextInputType.text,
                  decoration: getOutlineBorderDecoration(
                    hintText: 'Enter Your Name',
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Your Card Number',
                  style: getTextStyle(),
                ),
                SizedBox(
                  height: 13,
                ),
                TextFormField(
                  onChanged: null,
                  keyboardType: TextInputType.number,
                  decoration: getOutlineBorderDecoration(
                    hintText: '4747  4747  4747  4747',
                    suffixicon: Icons.credit_card,
                    color: ColorX.black,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                ExpiryAndCvcTextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
