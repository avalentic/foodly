import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Container(
      width: _width,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildUserInfo(),
          Container(
            width: _width - 50.0,
            height: 500,
            margin: const EdgeInsets.only(top: 24.0),
            decoration: new BoxDecoration(
              color: Color(0xfff9f9f9),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Color(0x7f000000),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _buildRow(_width, Icons.account_box, "Info"),
                _buildRow(_width, Icons.check_box, "Reservations"),
                _buildRow(_width, Icons.local_activity, "Activities"),
                _buildRow(_width, Icons.favorite, "Favorites"),
                _buildRow(_width, Icons.notifications, "Notifications"),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildBottomItem(Icons.settings, "Settings"),
                      _buildBottomItem(Icons.contact_mail, "Contact"),
                      _buildBottomItem(Icons.exit_to_app, "Log Out"),
                    ],
                  ),
                ),
                _buildVersionInfo("v.1.0.0."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_buildUserInfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 50.0, bottom: 12.0),
        width: 105,
        height: 105,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'images/person.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Text(
        "John Doe",
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Color(0xff000000),
          fontSize: 23,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
        ),
      ),
      Text(
        "johndoe@email.com",
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Color(0xff000000),
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      )
    ],
  );
}

_buildRow(double width, IconData icon, String description) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: <Widget>[
        Container(
          //width: width - 32.0,
          padding: const EdgeInsets.fromLTRB(32.0, 24.0, 26.0, 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    icon,
                    color: Color(0xff4e596f),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      description,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xff4e596f),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
        Container(
          height: 1,
          decoration: new BoxDecoration(
            border: Border.all(color: Color(0xffd7d7d7), width: 1),
          ),
        ),
      ],
    ),
  );
}

_buildBottomItem(IconData icon, String description) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xff4e596f),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            description,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Color(0xff4e596f),
              fontSize: 13,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        )
      ],
    ),
  );
}

_buildVersionInfo(String version) {
  return Expanded(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          version,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Color(0xff4e596f),
            fontSize: 13,
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    ),
  );
}
