import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/widgets/CartNumber.dart';
import 'package:pearlclothes/widgets/RichTextWidget.dart';

class MyCartCard extends StatefulWidget {
  String image, label, brand;
  int amount;
  MyCartCard(
      {Key? key,
      required this.image,
      required this.label,
      required this.brand,
      required this.amount})
      : super(key: key);

  @override
  _MyCartCardState createState() => _MyCartCardState();
}

class _MyCartCardState extends State<MyCartCard> {
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
            widget.image,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 18, left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.label,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(ColorX.primary)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.brand,
                    style: TextStyle(
                        color: Color(ColorX.tagColor),
                        fontWeight: FontWeight.w700,
                        fontSize: 9),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  SizedBox(
                    height: 46,
                    width: 80,
                    child: Center(
                      child: RichTextWidget(
                        color: ColorX.black,
                        amount: 28,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                child: Icon(
                  IconData(0xe868, fontFamily: 'MaterialIcons'),
                  color: Color(ColorX.tagColor),
                  size: 16,
                ),
              ),
              SizedBox(
                height: 64,
              ),
              CartNumber(cartValue: widget.amount),
            ],
          ),
        ],
      ),
    );
  }
}
