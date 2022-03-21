import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';

import 'RichTextWidget.dart';

class FavoriteCard extends StatelessWidget {
  String image, label, brand;
  int amount;
  FavoriteCard(
      {Key? key,
      required this.image,
      required this.label,
      required this.brand,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(ColorX.transparent),
        borderRadius: BorderRadius.circular(7),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 18, left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(ColorX.primary)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    brand,
                    style: TextStyle(
                        color: Color(ColorX.tagColor),
                        fontWeight: FontWeight.w700,
                        fontSize: 9),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 46,
                width: 80,
                child: Center(
                  child: RichTextWidget(
                    color: ColorX.black,
                    amount: 28,
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/AddToCartScreen'),
                child: Icon(
                  Icons.arrow_forward,
                  color: Color(ColorX.tagColor),
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
