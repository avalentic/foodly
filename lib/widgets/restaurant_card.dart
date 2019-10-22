import 'package:flutter/material.dart';
import 'package:foodly/ui/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final double rating;
  final String restuarantName, restaurantTags, restaurantImage;
  RestaurantCard(this.restuarantName, this.restaurantImage, this.restaurantTags,
      this.rating);

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
        width: 170.0,
        height: 190.0,
        margin: const EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            Container(
                height: 126.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                  child: Image.asset(
                    restaurantImage,
                    fit: BoxFit.fill,
                  ),
                )),
            Positioned(
              top: 126.0,
              child: new Container(
                  width: 170.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(13.0),
                      bottomRight: Radius.circular(13.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x7f000000),
                        offset: Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          restuarantName,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0xff454f63),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          restaurantTags,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0xff818897),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 9.0,
              right: 12.0,
              child: new Container(
                width: 43,
                height: 46,
                decoration: new BoxDecoration(
                  color: Color(0xffe68000),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                    bottomRight: Radius.circular(13.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    rating.toString(),
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xffffffff),
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
