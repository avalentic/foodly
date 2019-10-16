import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String text;
  final Color backgroundColor, fontColor, borderColor;
  Tag({this.text, this.backgroundColor, this.borderColor, this.fontColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { debugPrint("TAP!"); },
      child: Container(
        width: 100,
        height: 40,
        decoration: new BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
            width: 1
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(
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
