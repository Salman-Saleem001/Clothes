import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearlclothes/style/color.dart';

class FilterChips extends StatefulWidget {
  bool selectedOne;
  String? label;
  FilterChips({Key? key, required this.selectedOne, this.label = ''})
      : super(key: key);

  @override
  _FilterChipsState createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        backgroundColor: Color(ColorX.transparent),
        selectedColor: Color(ColorX.primary),
        showCheckmark: false,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: widget.selectedOne ? Color(ColorX.white) : Color(ColorX.black),
        ),
        label: SizedBox(
          width: MediaQuery.of(context).size.width / 15,
          height: MediaQuery.of(context).size.height / 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                widget.label!,
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(bottom: 32),
                    child: widget.selectedOne
                        ? Icon(
                            Icons.check,
                            color: Color(ColorX.white),
                            size: 14,
                          )
                        : null),
              ),
            ],
          ),
        ),
        selected: widget.selectedOne,
        onSelected: (bool value) {
          setState(() {
            widget.selectedOne = value;
          });
        });
  }
}
