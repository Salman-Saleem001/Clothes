import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/style/getContainerDecoration.dart';
import 'package:pearlclothes/widgets/CartHeadWidget.dart';
import 'package:pearlclothes/widgets/FavoriteBottomButton.dart';
import 'package:pearlclothes/widgets/MyCartCard.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorX.black),
        body: Container(
          padding: EdgeInsets.only(
              left: 30,
              top: MediaQuery.of(context).size.height / 20,
              right: 30,
              bottom: 41),
          decoration: getContainerDecoration(),
          child: Column(
            children: [
              CartHeadWidget(
                lable: 'My Cart',
              ),
              SizedBox(
                height: 21,
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: MyCartCard(
                          image: 'asset/image/printedShirt.png',
                          label: 'Printed Shirt',
                          brand: 'Geeta Collection',
                          amount: 1,
                        ),
                      ),
                  ],
                ),
              ),
              FavoriteBottomButton(
                label: 'Go to Checkout',
                preIcon: Icons.logout_rounded,
                price: 138.31,
                route: 'CreditCardScreen',
              )
            ],
          ),
        ),
      ),
    );
  }
}
