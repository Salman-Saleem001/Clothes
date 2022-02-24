import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginGradientData extends StatelessWidget {
  Widget childx;
  LoginGradientData({Key? key, required this.childx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 51.7,
          left: 183,
          child: Image.asset(
            'asset/image/loginImage.png',
            fit: BoxFit.cover,
          ),
        ),
        childx,
      ],
    );
  }
}
