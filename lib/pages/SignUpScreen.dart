import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/ButtonStyle.dart';
import 'package:pearlclothes/style/LoginGradient.dart';
import 'package:pearlclothes/style/TextFieldLabelStyle.dart';
import 'package:pearlclothes/style/TextFormFieldStyle.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/widgets/ButtonText.dart';
import 'package:pearlclothes/widgets/DiscriptionText.dart';
import 'package:pearlclothes/widgets/LoginGradientData.dart';
import 'package:pearlclothes/widgets/ScreenHeading.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String heading = 'Get’s started with Geeta.';
    String discription = 'Already have an account?';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorX.black),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 45),
              height: MediaQuery.of(context).size.height / 2.3,
              width: double.infinity,
              decoration: getGradientBoxDecoration(),
              child: LoginGradientData(
                childx: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(ColorX.white),
                      ),
                    ),
                    SizedBox(
                      height: 82,
                    ),
                    ScreenHeading(
                      text: heading,
                      colorx: ColorX.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        DiscriptionText(
                          discription: discription,
                          colorx: ColorX.white,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/LoginScreen');
                          },
                          child: DiscriptionText(
                            discription: 'Login',
                            colorx: ColorX.white,
                            textDecoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Color(ColorX.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  color: Color(ColorX.white),
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 42,
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
                          hintText: 'Enter Your Email',
                          prefixicon: Icons.perm_identity,
                        ),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        'Email address',
                        style: getTextStyle(),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      TextFormField(
                        onChanged: null,
                        keyboardType: TextInputType.emailAddress,
                        decoration: getOutlineBorderDecoration(
                          hintText: 'Enter Your Email',
                          prefixicon: Icons.email_outlined,
                        ),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        'Password',
                        style: getTextStyle(),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      TextFormField(
                        onChanged: null,
                        keyboardType: TextInputType.text,
                        decoration: getOutlineBorderDecoration(
                            hintText: 'Enter Your Password',
                            prefixicon: Icons.lock_outline),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      SizedBox(
                        height: 56,
                        width: double.infinity,
                        child: FlatButton(
                          color: Color(ColorX.primary),
                          shape: getRoundedRectangleBorder(),
                          onPressed: () {
                            Navigator.pushNamed(context, '/HomeScreen');
                          },
                          child: ButtonText(
                            label: 'REGISTER',
                            color: ColorX.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Center(
                        child: Text(
                          'By  joining I agree to receive emails from Geeta.',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(ColorX.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
