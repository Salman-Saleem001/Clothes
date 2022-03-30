import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

import '../services/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  bool test = false;
  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    String error = '';
    final AuthServices _auth = AuthServices();
    String heading = 'Welcome Back!';
    String discription =
        'Yay! You\'re back! Thanks for shopping with us.\nWe have excited deals and promotions going\non, grab your pick now! ';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorX.black),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 47, right: 30),
              height: MediaQuery.of(context).size.height / 2.3,
              width: double.infinity,
              decoration: getGradientBoxDecoration(),
              child: LoginGradientData(
                childx: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(ColorX.white),
                      ),
                    ),
                    ScreenHeading(
                      text: heading,
                      colorx: ColorX.white,
                    ),
                    DiscriptionText(
                      discription: discription,
                      colorx: ColorX.white,
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
                child: Form(
                  key: _formkey,
                  child: Container(
                    color: Color(ColorX.white),
                    padding: EdgeInsets.only(left: 45, right: 45, top: 53),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email address',
                              style: getTextStyle(),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            TextFormField(
                              validator: (val) =>
                                  val!.isEmpty ? 'email cannot be empty' : null,
                              onChanged: (val) {
                                setState(() {
                                  email = val;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  test = true;
                                });
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: getOutlineBorderDecoration(
                                hintText: 'Enter Your Email',
                                prefixicon: Icons.email_outlined,
                                suffixicon:
                                    test ? Icons.alternate_email_sharp : null,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Password',
                              style: getTextStyle(),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            TextFormField(
                              validator: (val) => val!.length < 8
                                  ? 'password cannot be less then 8 characters'
                                  : null,
                              onChanged: (val) {
                                setState(() {
                                  password = val;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  test = false;
                                });
                              },
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              decoration: getOutlineBorderDecoration(
                                  hintText: 'Enter Your Password',
                                  prefixicon: Icons.lock_outline),
                            ),
                          ],
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
                          height: 18,
                        ),
                        SizedBox(
                          height: 56,
                          width: double.infinity,
                          child: FlatButton(
                            color: Color(ColorX.primary),
                            shape: getRoundedRectangleBorder(),
                            onPressed: () async {
                              if (_formkey.currentState!.validate()) {
                                dynamic result = await _auth
                                    .loginWithEmailAndPassword(email, password);
                                if (result == null) {
                                  setState(() {
                                    error = 'Email Or Password is incorrect';
                                    print(error);
                                  });
                                } else {
                                  Navigator.pushNamed(context, '/HomeScreen');
                                }
                              }
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
                        ),
                        SizedBox(
                          height: 48,
                        ),
                      ],
                    ),
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
