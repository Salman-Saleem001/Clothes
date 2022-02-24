import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/style/getContainerDecoration.dart';
import 'package:pearlclothes/widgets/CartHeadWidget.dart';
import 'package:pearlclothes/widgets/DiscriptionText.dart';
import 'package:pearlclothes/widgets/PopularItems.dart';

class FindProductScreen extends StatelessWidget {
  const FindProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorX.black),
        body: Container(
          padding: EdgeInsets.only(top: 68, left: 30, right: 30),
          decoration: getContainerDecoration(),
          child: Column(
            children: [
              CartHeadWidget(
                lable: 'Find Product',
              ),
              SizedBox(
                height: 18,
              ),
              TextFormField(
                onChanged: null,
                keyboardType: TextInputType.text,
                cursorColor: Color(ColorX.black),
                cursorWidth: 1.0,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Color(
                      ColorX.grey,
                    ),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                  filled: true,
                  fillColor: Color(ColorX.transparent),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.only(top: 18, bottom: 16),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(ColorX.tagColor),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DiscriptionText(
                      discription: '139 items were found',
                      colorx: ColorX.tagColor)
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
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
        ),
      ),
    );
  }
}
