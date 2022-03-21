import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/DropDownMenuList.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/widgets/PopularItems.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  _PopularScreenState createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  late String dropDownValue = 'Filter & Sort';
  final items = ['Filter & Sort', 'One', 'Two', 'Three', 'four'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              DropdownButton(
                  elevation: 0,
                  isDense: true,
                  icon: Icon(
                    Icons.menu,
                    color: Color(ColorX.black),
                    size: 20,
                  ),
                  value: dropDownValue,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                        value: items, child: getDropdownMenuItem(items: items));
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      dropDownValue = value!;
                    });
                  }),
              Expanded(child: Container()),
              Icon(
                Icons.segment,
                size: 24,
                color: Color(ColorX.black),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 18,
                width: 18,
                color: Color(ColorX.black),
              ),
            ],
          ),
          SizedBox(
            height: 33,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 0.0,
              children: [
                for (int i = 0; i < 16; i++)
                  GestureDetector(
                    child: PopularItems(
                        name: 'Pink Hoodie',
                        amount: 48,
                        image: 'asset/image/hoodie 1.png'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
