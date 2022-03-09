import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/ContainerBottomBorder.dart';
import 'package:pearlclothes/style/TextFieldHintStyle.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/style/getContainerDecoration.dart';
import 'package:pearlclothes/widgets/BottomSheetData.dart';
import 'package:pearlclothes/widgets/CartHeadWidget.dart';
import 'package:pearlclothes/widgets/FavoriteBottomButton.dart';
import 'package:pearlclothes/widgets/FavoriteCard.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool show = false;
  List<String> label = ['Delivery', 'Payment', 'Promo Code'];
  List<String> method = [
    'Select Method',
    'Payment Method',
    'Pick Discount',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 30, top: 68, right: 30, bottom: 41),
          decoration: getContainerDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartHeadWidget(
                lable: 'Favorite',
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < 10; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            show = true;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: FavoriteCard(
                            image: 'asset/image/printedShirt.png',
                            label: 'Printed Shirt',
                            brand: 'Geeta Collection',
                            amount: 1,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              FavoriteBottomButton(
                label: 'Go to Checkout',
                preIcon: Icons.shopping_bag_outlined,
                route: '/CreditCardScreen',
              ),
            ],
          ),
        ),
        bottomSheet: _showBottomSheet(),
      ),
    );
  }

  Widget? _showBottomSheet() {
    if (show) {
      return BottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        )),
        onClosing: () {},
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height / 1.9,
            decoration: getContainerDecoration(color: ColorX.transparent),
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 47,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 33),
                      decoration: getContainerBottomBoder(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CheckOut',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Color(ColorX.black),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  show = false;
                                });
                              },
                              icon: Icon(
                                Icons.close_sharp,
                                color: Color(ColorX.tagColor),
                              ))
                        ],
                      ),
                    ),
                    for (int i = 0; i < label.length; i++)
                      getBottomSheetData(label: label[i], method: method[i]),
                    getBottomSheetData(
                        label: 'Total Cost', method: '\$ ${148.8}'),
                    SizedBox(
                      height: 23,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'By placing an order you agree to our\n\t\t\t\t\t\t\t\t\tTerms And Conditions.',
                          style: getHintStyle(),
                        ),
                      ],
                    ),
                    FavoriteBottomButton(
                      label: 'Place Order',
                      preIcon: Icons.directions_car,
                      backGroundColor: ColorX.transparent,
                      route: '/CreditCardScreen',
                    )
                  ],
                ),
              ],
            ),
          );
        },
      );
    } else {
      return null;
    }
  }
}
