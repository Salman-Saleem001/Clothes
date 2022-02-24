import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pearlclothes/style/ButtonStyle.dart';
import 'package:pearlclothes/style/LoginGradient.dart';
import 'package:pearlclothes/style/TextFieldLabelStyle.dart';
import 'package:pearlclothes/style/TextFormFieldStyle.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/widgets/ButtonText.dart';
import 'package:pearlclothes/widgets/CheckBoxWidget.dart';
import 'package:pearlclothes/widgets/DiscriptionText.dart';
import 'package:pearlclothes/widgets/LoginGradientData.dart';
import 'package:pearlclothes/widgets/ScreenHeading.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool test = false;
  @override
  Widget build(BuildContext context) {
    String heading = 'Welcome Back!';
    String discription =
        'Yay! You\'re back! Thanks for shopping with us.\nWe have excited deals and promotions going\non, grab your pick now! ';
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
                        Navigator.pushNamed(context, '/EntryScreen');
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
                      height: 30,
                    ),
                    DiscriptionText(
                      discription: discription,
                      colorx: ColorX.white,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 11,
                    ),
                    Text(
                      'LOGIN',
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
                        height: 53,
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
                        onTap: () {
                          setState(() {
                            test = true;
                          });
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: getOutlineBorderDecoration(
                          hintText: 'Enter Your Email',
                          prefixicon: Icons.email_outlined,
                          suffixicon: test ? Icons.alternate_email_sharp : null,
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
                        onTap: () {
                          setState(() {
                            test = false;
                          });
                        },
                        keyboardType: TextInputType.text,
                        decoration: getOutlineBorderDecoration(
                            hintText: 'Enter Your Password',
                            prefixicon: Icons.lock_outline),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        children: [
                          CheckBoxWidget(),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(ColorX.black),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(ColorX.primary),
                              ),
                            ),
                          ),
                        ],
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
                            label: 'LOGIN',
                            color: ColorX.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not register yet?',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(ColorX.grey),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/SignUpScreen');
                            },
                            child: Text(
                              'Create account',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(ColorX.primary),
                              ),
                            ),
                          )
                        ],
                      )
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
