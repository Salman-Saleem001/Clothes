import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/ButtonStyle.dart';
import 'package:pearlclothes/style/color.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorX.black),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Image.asset(
                'asset/image/loading.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 597,
                  ),
                  Text(
                    'Pearl .',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 104,
                      color: Color(ColorX.white),
                    ),
                  ),
                  SizedBox(
                    height: 79,
                  ),
                  SizedBox(
                    height: 56,
                    width: 222,
                    child: OutlineButton(
                      shape: getRoundedRectangleBorder(),
                      onPressed: () {
                        Navigator.pushNamed(context, '/EntryScreen');
                      },
                      borderSide: getBorderSide(colorx: ColorX.white),
                      child: Text(
                        'SHOP NOW',
                        style: TextStyle(
                          color: Color(ColorX.white),
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(ColorX.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(ColorX.white),
                        ),
                      ),
                      Container(
                        height: 6,
                        width: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(ColorX.white),
                        ),
                      ),
                    ],
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
