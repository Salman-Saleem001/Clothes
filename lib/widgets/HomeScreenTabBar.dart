import 'package:flutter/material.dart';
import 'package:pearlclothes/style/TabBarStyle.dart';
import 'package:pearlclothes/style/color.dart';

TabBar getTabBar({required List<String> tabicon}) {
  return TabBar(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3.0,
          color: Color(ColorX.primary),
        ),
        insets: EdgeInsets.only(left: 30, right: 60),
      ),
      padding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      labelColor: Color(ColorX.primary),
      unselectedLabelColor: Color(ColorX.tagColor),
      indicatorColor: Color(ColorX.primary),
      tabs: [
        for (int i = 0; i < tabicon.length; i++)
          Tab(
            child: Text(
              tabicon[i],
              style: getTabBarStyle(),
            ),
          ),
      ]);
}
