import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/TextFieldLabelStyle.dart';
import 'package:pearlclothes/style/TextFormFieldStyle.dart';
import 'package:pearlclothes/style/color.dart';

class ExpiryAndCvcTextField extends StatelessWidget {
  const ExpiryAndCvcTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Expiry date',
                style: getTextStyle(),
              ),
              SizedBox(
                height: 13,
              ),
              TextFormField(
                onChanged: null,
                keyboardType: TextInputType.datetime,
                decoration: getOutlineBorderDecoration(
                  hintText: '07/21',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CVC',
                style: getTextStyle(),
              ),
              SizedBox(
                height: 13,
              ),
              TextFormField(
                onChanged: null,
                keyboardType: TextInputType.number,
                decoration: getOutlineBorderDecoration(
                  hintText: '472',
                  suffixicon: Icons.credit_card_off_outlined,
                  color: ColorX.tagColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
