import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/GradientColor.dart';
import 'package:pearlclothes/style/TextFieldHintStyle.dart';
import 'package:pearlclothes/style/color.dart';
import 'package:pearlclothes/widgets/DrawerItems.dart';

Drawer getDrawer(context) {
  List<String> lable = [
    'Order',
    'Wishlist',
    'Delivery Address',
    'Payment Method',
    'Promo Code',
    'Notification',
    'Help',
    'About',
  ];
  List<IconData> iconData = [
    Icons.shopping_bag_outlined,
    Icons.favorite_outline,
    Icons.location_on_outlined,
    Icons.credit_card,
    Icons.screen_search_desktop,
    Icons.notifications_none_outlined,
    Icons.help_outline_outlined,
    Icons.alternate_email_sharp,
  ];
  return Drawer(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
    ),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        gradient: getLinearGradient(),
      ),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close_sharp,
                      color: Color(ColorX.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 52,
              ),
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'asset/image/hoodie 1.png',
                      fit: BoxFit.contain,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Varat Singh Sh',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: Color(ColorX.white)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.edit,
                              color: Color(ColorX.white),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'jr.varat@gmail.com',
                        style: getHintStyle(color: ColorX.hintColor),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  for (int i = 0; i < lable.length; i++)
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 43),
                        child: getDrawerItems(
                            label: lable[i], iconData: iconData[i]),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                child: getDrawerItems(
                  label: 'Logout',
                  iconData: Icons.logout,
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ],
      ),
    ),
  );
}
