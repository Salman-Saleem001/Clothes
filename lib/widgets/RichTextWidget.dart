import 'package:flutter/cupertino.dart';

class RichTextWidget extends StatelessWidget {
  int amount;
  int color;
  RichTextWidget({Key? key, required this.amount, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: new TextSpan(
        text: '\$ ${amount}',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w900, color: Color(color)),
        children: <TextSpan>[
          new TextSpan(
              text: '.00 USD',
              style: new TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 12,
              )),
        ],
      ),
    );
  }
}
