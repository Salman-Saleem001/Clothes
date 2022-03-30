import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginGradientData extends StatelessWidget {
  Widget childx;
  LoginGradientData({Key? key, required this.childx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Image.asset(
                'asset/image/loginImage.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        childx,
      ],
    );
  }
}
