import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pearlclothes/style/color.dart';

class RatingWidgetHm extends StatelessWidget {
  double rating;
  RatingWidgetHm({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: rating,
      direction: Axis.horizontal,
      ignoreGestures: true,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15.8,
      ratingWidget: RatingWidget(
        full: Icon(
          Icons.star_outlined,
          color: Color(ColorX.accent),
        ),
        half: Icon(
          Icons.star_half_outlined,
          color: Color(ColorX.accent),
        ),
        empty: Icon(
          Icons.star_outline_outlined,
          color: Color(ColorX.accent),
        ),
      ),
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
