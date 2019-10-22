import 'package:flutter/material.dart';
import 'package:foodly/widgets/tag.dart';
import 'package:foodly/widgets/search_card.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          width: _width,
          height: 200,
          decoration: new BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: _width,
                height: 40.0,
                margin: const EdgeInsets.fromLTRB(16.0, 45.0, 16.0, 0.0),
                decoration: new BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextField(
                  maxLines: 1,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff707070),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      child: Container(
                        width: 48.0,
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                color: Color(0xff454f63),
                              ),
                            ),
                            Container(
                              width: 0,
                              height: 27,
                              decoration: new BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffb5b9c1),
                                  width: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    suffixIcon: Container(
                      width: 48.0,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 0,
                            height: 27,
                            decoration: new BoxDecoration(
                              border: Border.all(
                                color: Color(0xffb5b9c1),
                                width: 1,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Color(0xff454f63),
                            ),
                          ),
                        ],
                      ),
                    ),
                    hintText: "Cuisine, Restaurant Name",
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff707070),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      height: 1,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40.0,
                margin: const EdgeInsets.only(top: 18.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Tag(
                      text: "Chinese",
                      backgroundColor: Color(0xff8cc540),
                      borderColor: Color(0xff6b9830),
                      fontColor: Color(0xffffffff),
                    ),
                    Tag(
                      text: "India",
                      backgroundColor: Color(0xff8cc540),
                      borderColor: Color(0xff6b9830),
                      fontColor: Color(0xffffffff),
                    ),
                    Tag(
                      text: "Steambot",
                      backgroundColor: Color(0xff8cc540),
                      borderColor: Color(0xff6b9830),
                      fontColor: Color(0xffffffff),
                    ),
                    Tag(
                      text: "Japanese",
                      backgroundColor: Color(0xff8cc540),
                      borderColor: Color(0xff6b9830),
                      fontColor: Color(0xffffffff),
                    ),
                  ],
                ),
              ),
              Container(
                height: 48.0,
                margin: const EdgeInsets.only(top: 9.0),
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(50.0),
                      child: Material(
                        color: Colors.white,
                        child: TabBar(
                          controller: _tabController,
                          indicatorPadding:
                              const EdgeInsets.symmetric(horizontal: 16.0),
                          tabs: [
                            Tab(
                              child: Text(
                                "All",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff454f63),
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Nearby",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff454f63),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ListView(
                    children: <Widget>[
                      SearchCard(
                        restaurantName: "Rocku Yakiniku",
                        restaurantAddress:
                            "Desa Petalling, Kuala Lumpur (B-G-02 & B-G-03 Arcadia Plaza Long Text...",
                        restaurantImage: "images/restaurant1.jpg",
                        rating: 4.9,
                        color: Color(0xff4e84e2),
                      ),
                      SearchCard(
                        restaurantName: "Tai Ping Chinese Cuisine",
                        restaurantAddress:
                            "Kuala Lumpur City Centre Wilayah Persekutuan (5 Jalan Conlay)",
                        restaurantImage: "images/restaurant2.jpg",
                        rating: 3.5,
                        color: Color(0xff8cc540),
                      ),
                      SearchCard(
                        restaurantName: "Seven Happy Friends Bar & R...",
                        restaurantAddress:
                            "Desa Petalling, Kuala Lumpur (B-G-02 & B-G-03 Arcadia Plaza Long Text...",
                        restaurantImage: "images/restaurant3.jpg",
                        rating: 4.5,
                        color: Color(0xffc1c1c1),
                      ),
                    ],
                  ),
                ),
              ),
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ListView(
                    children: <Widget>[
                      SearchCard(
                        restaurantName: "Rocku Yakiniku",
                        restaurantAddress:
                            "Desa Petalling, Kuala Lumpur (B-G-02 & B-G-03 Arcadia Plaza Long Text...",
                        restaurantImage: "images/restaurant1.jpg",
                        rating: 4.9,
                        color: Color(0xff4e84e2),
                      ),
                      SearchCard(
                        restaurantName: "Tai Ping Chinese Cuisine",
                        restaurantAddress:
                            "Kuala Lumpur City Centre Wilayah Persekutuan (5 Jalan Conlay)",
                        restaurantImage: "images/restaurant2.jpg",
                        rating: 3.5,
                        color: Color(0xff8cc540),
                      ),
                      SearchCard(
                        restaurantName: "Seven Happy Friends Bar & R...",
                        restaurantAddress:
                            "Desa Petalling, Kuala Lumpur (B-G-02 & B-G-03 Arcadia Plaza Long Text...",
                        restaurantImage: "images/restaurant3.jpg",
                        rating: 4.5,
                        color: Color(0xffc1c1c1),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
