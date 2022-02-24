import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/style/getContainerDecoration.dart';
import 'package:pearlclothes/widgets/CartNumber.dart';
import 'package:pearlclothes/widgets/FavoriteBottomButton.dart';
import 'package:pearlclothes/widgets/FilterChips.dart';
import 'package:pearlclothes/widgets/RatingStarWidget.dart';
import 'package:pearlclothes/widgets/RichTextWidget.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({Key? key}) : super(key: key);

  @override
  _AddToCartScreenState createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  String discripton =
      'Lorem Ipsum is simply dummy text of\nthe printing and typesetting industry.\nLorem Ipsum has been the industry \'s\nstandard dummy text ever since the\n1500s, when an unknown printer\ntook a galley of type and scrambled it to make\na type specimen book...detail';
  Icon Outlinedicon = Icon(
    Icons.favorite_outline,
    color: Color(ColorX.black),
  );
  Icon newIcon = Icon(
    Icons.favorite_outlined,
    color: Colors.red,
  );
  int cartValue = 1;
  bool check = false;
  bool selectedOne = false;
  List<String> label = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 25),
            decoration: getContainerDecoration(color: ColorX.transparent),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(ColorX.black),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'asset/image/hoodie 1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(46),
                      color: Color(ColorX.white)),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (check == false) {
                          check = true;
                        } else {
                          check = false;
                        }
                      });
                    },
                    icon: check ? newIcon : Outlinedicon,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 25, left: 30, right: 30),
              decoration: getContainerDecoration(color: ColorX.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Geeta men',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(ColorX.black)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Black Hoodie',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                            color: Color(ColorX.black)),
                      ),
                      RichTextWidget(
                        amount: 48,
                        color: ColorX.black,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RatingWidgetHm(rating: 4),
                  SizedBox(
                    height: 37,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        width: 82,
                        decoration: BoxDecoration(
                            border: Border.all(
                          width: 0.3,
                          style: BorderStyle.solid,
                          color: Color(ColorX.black),
                        )),
                        child: CartNumber(
                          cartValue: 1,
                        ),
                      ),
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(46),
                          color: Color(ColorX.transparent),
                        ),
                        child: Icon(
                          IconData(0xf05d, fontFamily: 'MaterialIcons'),
                          color: Color(ColorX.black),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Text(
                    'Discription',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    discripton,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Selected Size',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < label.length; i++)
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: FilterChips(
                            selectedOne: selectedOne,
                            label: label[i],
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  FavoriteBottomButton(
                    label: 'Add To Cart',
                    preIcon: Icons.shopping_bag_outlined,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
