import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String text;
  final Color backgroundColor, fontColor, borderColor;
  Tag({this.text, this.backgroundColor, this.borderColor, this.fontColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("TAP!");
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10.0),
        child: Chip(
          backgroundColor: backgroundColor,
          shape: StadiumBorder(
            side: BorderSide(
              color: borderColor,
              width: 1.0,
            ),
          ),
          label: Text(
            text,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: fontColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
