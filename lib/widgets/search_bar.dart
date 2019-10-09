import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32.0, right: 32.0),
      decoration: new BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(color: Color(0xff979797), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Roboto',
                color: Color(0xff8f8f8f),
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12.0),
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search, color: Color(0xff8f8f8f),),
            onPressed: () { debugPrint("TAP!"); },
          ),
        ],
      ),
    );
  }
}