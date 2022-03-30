import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/pages/AddToCartScreen.dart';
import 'package:pearlclothes/pages/CreditCardScreen.dart';
import 'package:pearlclothes/pages/EntryScreen.dart';
import 'package:pearlclothes/pages/ErrorScreen.dart';
import 'package:pearlclothes/pages/FavoriteScreen.dart';
import 'package:pearlclothes/pages/FindProductScreen.dart';
import 'package:pearlclothes/pages/FinishScreen.dart';
import 'package:pearlclothes/pages/HomeScreen.dart';
import 'package:pearlclothes/pages/LoginScreen.dart';
import 'package:pearlclothes/pages/MyCartScreen.dart';
import 'package:pearlclothes/pages/SignUpScreen.dart';
import 'package:pearlclothes/pages/Wrapper.dart';
import 'package:pearlclothes/services/auth.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      value: AuthServices().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          primaryColor: Color(ColorX.primary),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
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
}
