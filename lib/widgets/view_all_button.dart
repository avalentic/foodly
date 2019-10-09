import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 74,
        height: 26,
        decoration: new BoxDecoration(
          color: Color(0xff8cc540),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Center(
          child: Text(
            "View all",
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Color(0xffffffff),
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
