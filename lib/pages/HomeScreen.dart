import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/widgets/Drawer.dart';
import 'package:pearlclothes/widgets/HomeScreenTabBar.dart';

import 'PopularScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabicon = ['Popular', 'Menu', 'Women', 'Sale'];
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
            titleSpacing: 30,
            backgroundColor: Color(ColorX.white),
            actions: [
              GestureDetector(
                  child: Icon(
                Icons.notifications_none_outlined,
                color: Color(ColorX.black),
              )),
              SizedBox(
                width: 25,
              ),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/MyCartScreen'),
                  child: Icon(Icons.shopping_bag_outlined,
                      color: Color(ColorX.black))),
              SizedBox(
                width: 25,
              ),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/FavoriteScreen'),
                  child: Icon(Icons.favorite_outline_rounded,
                      color: Color(ColorX.black))),
              SizedBox(
                width: 25,
              ),
              GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/FindProductScreen'),
                  child: Icon(Icons.search, color: Color(ColorX.black))),
              SizedBox(
                width: 25,
              ),
              GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
                child: Icon(Icons.segment, color: Color(ColorX.black)),
              ),
              SizedBox(
                width: 25,
              ),
            ],
            title: Text(
              'Pearl',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Color(ColorX.black)),
            ),
            bottom: getTabBar(tabicon: tabicon),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TabBarView(
              children: [
                PopularScreen(),
                PopularScreen(),
                PopularScreen(),
                PopularScreen(),
              ],
            ),
          ),
          endDrawer: getDrawer(context),
        ),
      ),
    );
  }
}
