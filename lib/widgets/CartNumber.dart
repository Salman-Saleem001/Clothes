import 'package:flutter/cupertino.dart';
import 'package:pearlclothes/style/AddToCartTextStyle.dart';
import 'package:pearlclothes/style/color.dart';

class CartNumber extends StatefulWidget {
  int cartValue;
  CartNumber({Key? key, required this.cartValue}) : super(key: key);

  @override
  _CartNumberState createState() => _CartNumberState();
}

class _CartNumberState extends State<CartNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 82,
      decoration: BoxDecoration(
          border: Border.all(
        width: 0.3,
        style: BorderStyle.solid,
        color: Color(ColorX.black),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 18,
            width: 20,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.cartValue--;
                });
              },
              child: Text(
                '-',
                textAlign: TextAlign.end,
                style: getAddTextStyle(),
              ),
            ),
          ),
          Text(
            '${widget.cartValue}',
            style: getAddTextStyle(),
          ),
          SizedBox(
            height: 18,
            width: 20,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.cartValue++;
                });
              },
              child: Text(
                '+',
                style: getAddTextStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
