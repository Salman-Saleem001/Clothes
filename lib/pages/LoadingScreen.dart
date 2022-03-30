import 'package:flutter/material.dart';
import 'package:pearlclothes/pages/EntryScreen.dart';
import 'package:pearlclothes/style/ButtonStyle.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/style/getContainerDecoration.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorX.black),
        body: PageView(
          controller: pageController,
          pageSnapping: true,
          children: [
            Container(
              decoration: getContainerDecoration(color: ColorX.black),
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Pearl .',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 104,
                                color: Color(ColorX.white),
                              ),
                            ),
                            SizedBox(
                              height: 56,
                              width: 222,
                              child: OutlineButton(
                                shape: getRoundedRectangleBorder(),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/LoginScreen');
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
            EntryScreen(),
          ],
        ),
      ),
    );
  }
}
