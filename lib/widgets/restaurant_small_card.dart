import 'package:flutter/material.dart';

class RestaurantSmallCard extends StatelessWidget {
  final String name, address, tags, image;
  RestaurantSmallCard(this.name, this.address, this.tags, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 310.0,
        height: 90.0,
        margin: const EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 60.0,
              child: Container(
                width: 245,
                height: 90,
                decoration: new BoxDecoration(
                  color: Color(0xfff6f6f6),
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x7f000000),
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xff454f63),
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            address,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xff818897),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            tags,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xff454f63),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10.0,
              child: Container(
                width: 80,
                height: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
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
