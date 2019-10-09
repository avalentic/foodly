import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String name;
  Tag(this.name);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { debugPrint("TAP!"); },
      child: Container(
        width: 100,
        height: 30,
        decoration: new BoxDecoration(
          color: Color(0xfff0f0f0),
          borderRadius: BorderRadius.circular(13),
        ),
        margin: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Color(0xff454f63),
              fontSize: 15,
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
