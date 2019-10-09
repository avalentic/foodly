import 'package:flutter/material.dart';
import 'package:foodly/widgets/search_bar.dart';
import 'package:foodly/widgets/featured_card.dart';
import 'package:foodly/widgets/tag.dart';
import 'package:foodly/widgets/restaurant_card.dart';
import 'package:foodly/widgets/view_all_button.dart';
import 'package:foodly/widgets/restaurant_small_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 345.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: -250.0,
                        left: -18.0,
                        child: Container(
                          width: 450,
                          height: 450,
                          decoration: new BoxDecoration(
                            color: Color(0xff65b200),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x7f000000),
                                offset: Offset(0, 2),
                                blurRadius: 4,
                                spreadRadius: 0,
                              ),
                              BoxShadow(
                                color: Color(0x7f000000),
                                offset: Offset(0, 1),
                                blurRadius: 3,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -280.0,
                        left: -18.0,
                        child: Container(
                          width: 450,
                          height: 450,
                          decoration: new BoxDecoration(
                            color: Color(0xff7ebf2b),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 55.0),
                        child: SearchBar(),
                      ),
                      Container(
                        height: 205.0,
                        margin: const EdgeInsets.only(top: 115.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            FeaturedCard("PIZZA MENU", "images/pizza.jpg"),
                            FeaturedCard("DESERT MENU", "images/desert.jpg"),
                            FeaturedCard("RICE MENU", "images/rice.jpg"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.trending_up,
                        color: Color(0xff454f63),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Popular tags",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            color: Color(0xff454f63),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Tag("Chinese"),
                      Tag("India"),
                      Tag("Steambot"),
                      Tag("Buffet"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.confirmation_number,
                              color: Color(0xff454f63),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Featured",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff454f63),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ViewAllButton(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 205.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RestaurantCard("Tai Ping Chinese C",
                          "images/restaurant1.jpg", "Chinese/Buffet/BBQ", 3.5),
                      RestaurantCard(
                          "Seven Friends Bar & Resturant",
                          "images/restaurant2.jpg",
                          "Western/Pub/Sportsbar",
                          4.5),
                      RestaurantCard(
                          "Rocku Yakiniku Pavilion",
                          "images/restaurant3.jpg",
                          "Japanese/Sushi/Buffet",
                          4.9),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up,
                              color: Color(0xff454f63),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Top 30",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff454f63),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ViewAllButton(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 330.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          RestaurantSmallCard(
                            "Tai Ping Chinese Cuisine",
                            "5 Jalan Conlay, Kuala Lumpur City Center",
                            "Chinese/Buffet/BBQ",
                            "images/restaurant1.jpg",
                          ),
                          RestaurantSmallCard(
                            "Seven Friends Bar & Resturant",
                            "B-G-02 & B-G-03 Arcadia Plaza, Desa",
                            "Western/Pub/Sportsbar",
                            "images/restaurant2.jpg",
                          ),
                          RestaurantSmallCard(
                            "Rocku Yakiniku Pavilion",
                            "Lot.7.01.03, Level 7, 168, Bukit Bintang",
                            "Japanese/Sushi/Buffet",
                            "images/restaurant3.jpg",
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          RestaurantSmallCard(
                            "Tai Ping Chinese Cuisine",
                            "5 Jalan Conlay, Kuala Lumpur City Center",
                            "Chinese/Buffet/BBQ",
                            "images/restaurant1.jpg",
                          ),
                          RestaurantSmallCard(
                            "Seven Friends Bar & Resturant",
                            "B-G-02 & B-G-03 Arcadia Plaza, Desa",
                            "Western/Pub/Sportsbar",
                            "images/restaurant2.jpg",
                          ),
                          RestaurantSmallCard(
                            "Rocku Yakiniku Pavilion",
                            "Lot.7.01.03, Level 7, 168, Bukit Bintang",
                            "Japanese/Sushi/Buffet",
                            "images/restaurant3.jpg",
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          RestaurantSmallCard(
                            "Tai Ping Chinese Cuisine",
                            "5 Jalan Conlay, Kuala Lumpur City Center",
                            "Chinese/Buffet/BBQ",
                            "images/restaurant1.jpg",
                          ),
                          RestaurantSmallCard(
                            "Seven Friends Bar & Resturant",
                            "B-G-02 & B-G-03 Arcadia Plaza, Desa",
                            "Western/Pub/Sportsbar",
                            "images/restaurant2.jpg",
                          ),
                          RestaurantSmallCard(
                            "Rocku Yakiniku Pavilion",
                            "Lot.7.01.03, Level 7, 168, Bukit Bintang",
                            "Japanese/Sushi/Buffet",
                            "images/restaurant3.jpg",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.my_location,
                              color: Color(0xff454f63),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Nearby",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff454f63),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ViewAllButton(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 330.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          RestaurantSmallCard(
                            "Tai Ping Chinese Cuisine",
                            "5 Jalan Conlay, Kuala Lumpur City Center",
                            "Chinese/Buffet/BBQ",
                            "images/restaurant1.jpg",
                          ),
                          RestaurantSmallCard(
                            "Seven Friends Bar & Resturant",
                            "B-G-02 & B-G-03 Arcadia Plaza, Desa",
                            "Western/Pub/Sportsbar",
                            "images/restaurant2.jpg",
                          ),
                          RestaurantSmallCard(
                            "Rocku Yakiniku Pavilion",
                            "Lot.7.01.03, Level 7, 168, Bukit Bintang",
                            "Japanese/Sushi/Buffet",
                            "images/restaurant3.jpg",
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          RestaurantSmallCard(
                            "Tai Ping Chinese Cuisine",
                            "5 Jalan Conlay, Kuala Lumpur City Center",
                            "Chinese/Buffet/BBQ",
                            "images/restaurant1.jpg",
                          ),
                          RestaurantSmallCard(
                            "Seven Friends Bar & Resturant",
                            "B-G-02 & B-G-03 Arcadia Plaza, Desa",
                            "Western/Pub/Sportsbar",
                            "images/restaurant2.jpg",
                          ),
                          RestaurantSmallCard(
                            "Rocku Yakiniku Pavilion",
                            "Lot.7.01.03, Level 7, 168, Bukit Bintang",
                            "Japanese/Sushi/Buffet",
                            "images/restaurant3.jpg",
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          RestaurantSmallCard(
                            "Tai Ping Chinese Cuisine",
                            "5 Jalan Conlay, Kuala Lumpur City Center",
                            "Chinese/Buffet/BBQ",
                            "images/restaurant1.jpg",
                          ),
                          RestaurantSmallCard(
                            "Seven Friends Bar & Resturant",
                            "B-G-02 & B-G-03 Arcadia Plaza, Desa",
                            "Western/Pub/Sportsbar",
                            "images/restaurant2.jpg",
                          ),
                          RestaurantSmallCard(
                            "Rocku Yakiniku Pavilion",
                            "Lot.7.01.03, Level 7, 168, Bukit Bintang",
                            "Japanese/Sushi/Buffet",
                            "images/restaurant3.jpg",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffe9e9e9),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(
              "Home",
              style: TextStyle(
                color: Color(0xff454f63),
              ),
            ),
            icon: Icon(
              Icons.home,
              color: Color(0xff454f63),
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Search",
              style: TextStyle(
                color: Color(0xff454f63),
              ),
            ),
            icon: Icon(
              Icons.search,
              color: Color(0xff454f63),
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Nearby",
              style: TextStyle(
                color: Color(0xff454f63),
              ),
            ),
            icon: Icon(
              Icons.add_location,
              color: Color(0xff454f63),
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Account",
              style: TextStyle(
                color: Color(0xff454f63),
              ),
            ),
            icon: Icon(
              Icons.account_circle,
              color: Color(0xff454f63),
            ),
          ),
        ],
      ),
    );
  }
}
