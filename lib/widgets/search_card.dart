import 'package:flutter/material.dart';
import 'package:foodly/widgets/tag.dart';

class SearchCard extends StatelessWidget {
  final double rating;
  final String restaurantName, restaurantAddress, restaurantImage;
  final Color color;
  SearchCard({this.restaurantName, this.restaurantAddress, this.restaurantImage, this.rating, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 4,
                height: 170,
                decoration: new BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(1.0),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 20.0, left: 28.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 28,
                          height: 21,
                          decoration: new BoxDecoration(
                            color: Color(0xfff69223),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              rating.toString(),
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.star,
                            color: Color(0xfff69223),
                          ),
                        ),
                        Icon(
                          Icons.star_border,
                          color: Color(0xfff69223),
                        ),
                        Icon(
                          Icons.star_border,
                          color: Color(0xfff69223),
                        ),
                        Icon(
                          Icons.star_border,
                          color: Color(0xfff69223),
                        ),
                        Icon(
                          Icons.star_border,
                          color: Color(0xfff69223),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            "(275)",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xffb5b9c1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200.0,
                    margin: const EdgeInsets.only(left: 28.0, top: 12.0),
                    child: Text(
                      restaurantName,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xff454f63),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    width: 200.0,
                    margin: const EdgeInsets.only(left: 28.0, top: 8.0),
                    child: Text(
                      restaurantAddress,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xffb5b9c1),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 30.0,
                    margin: const EdgeInsets.only(left: 28.0, top: 12.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Tag(
                          text: "Japanese",
                          backgroundColor: Color(0xfff69223),
                          borderColor: Color(0xffb76a15),
                          fontColor: Colors.white,
                        ),
                        Tag(
                          text: "Sushi",
                          backgroundColor: Color(0xfff69223),
                          borderColor: Color(0xffb76a15),
                          fontColor: Colors.white,
                        ),
                        Tag(
                          text: "Buffet",
                          backgroundColor: Color(0xfff69223),
                          borderColor: Color(0xffb76a15),
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 90,
                height: 90,
                margin: const EdgeInsets.only(top: 20.0, left: 32.0),
                child: Image.asset(
                  restaurantImage,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
