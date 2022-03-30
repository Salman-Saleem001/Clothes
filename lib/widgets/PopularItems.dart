import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/widgets/RichTextWidget.dart';

class PopularItems extends StatefulWidget {
  String image, name;
  int amount;
  PopularItems(
      {Key? key, required this.name, required this.amount, required this.image})
      : super(key: key);

  @override
  _PopularItemsState createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
  bool check = false;
  Icon outlinedicon = Icon(
    Icons.favorite_outline,
    color: Color(ColorX.black),
  );
  Icon newIcon = Icon(
    Icons.favorite_outlined,
    color: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(ColorX.transparent),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: IconButton(
                          splashRadius: 1,
                          onPressed: () {
                            setState(() {
                              if (check == false) {
                                check = true;
                              } else {
                                check = false;
                              }
                            });
                          },
                          icon: check ? newIcon : outlinedicon,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                    child: Center(
                      child: Image.asset(
                        widget.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            widget.name,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: Color(ColorX.black)),
          ),
          SizedBox(
            height: 5,
          ),
          RichTextWidget(
            amount: widget.amount,
            color: ColorX.tagColor,
          )
        ],
      ),
    );
  }
}
