import 'package:flutter/material.dart';
import 'package:pearlclothes/pages/AddToCartScreen.dart';
import 'package:pearlclothes/pages/CreditCardScreen.dart';
import 'package:pearlclothes/pages/EntryScreen.dart';
import 'package:pearlclothes/pages/ErrorScreen.dart';
import 'package:pearlclothes/pages/FavoriteScreen.dart';
import 'package:pearlclothes/pages/FindProductScreen.dart';
import 'package:pearlclothes/pages/FinishScreen.dart';
import 'package:pearlclothes/pages/HomeScreen.dart';
import 'package:pearlclothes/pages/LoadingScreen.dart';
import 'package:pearlclothes/pages/LoginScreen.dart';
import 'package:pearlclothes/pages/MyCartScreen.dart';
import 'package:pearlclothes/pages/SignUpScreen.dart';
import 'package:pearlclothes/style/color.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        primaryColor: Color(ColorX.primary),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/EntryScreen': (context) => EntryScreen(),
        '/LoginScreen': (context) => LoginScreen(),
        '/SignUpScreen': (context) => SignUpScreen(),
        '/HomeScreen': (context) => HomeScreen(),
        '/FavoriteScreen': (context) => FavoriteScreen(),
        '/AddToCartScreen': (context) => AddToCartScreen(),
        '/MyCartScreen': (context) => MyCartScreen(),
        '/FindProductScreen': (context) => FindProductScreen(),
        '/MyCartCard': (context) => MyCartScreen(),
        '/FinishScreen': (context) => FinishScreen(),
        '/CreditCardScreen': (context) => CreditCardScreen(),
        '/ErrorScreen': (context) => ErrorScreen(),
      },
    ),
  );
}
