import 'package:flutter/material.dart';
import 'package:foodly/ui/restaurant.dart';

class FeaturedCard extends StatelessWidget {
  final String name, image;
  FeaturedCard(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Restaurant(),
          ),
        );
      },
      child: Container(
        width: 300.0,
        height: 185.0,
        child: Stack(
          children: <Widget>[
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            Positioned(
              top: 24.0,
              left: 30.0,
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 24.0,
              right: 16.0,
              child: FlatButton(
                onPressed: () {
                  debugPrint("TAP!");
                },
                child: new Container(
                  width: 125,
                  height: 36,
                  decoration: new BoxDecoration(
                    color: Color(0xffe4800d),
                    border: Border.all(color: Color(0xffd87300), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
