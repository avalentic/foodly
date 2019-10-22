import 'package:flutter/material.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 380.0,
                  child: Image.asset(
                    'images/restaurant1.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xdaf8f8f8),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          color: Color(0xdaf8f8f8),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "34 Reviews",
                                  style: TextStyle(color: Color(0xff454f63)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Wrap(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Color(0xfff69223),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xfff69223),
                                      ),
                                      Icon(
                                        Icons.star,
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 4.0),
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xfff69223),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "3.5",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 268.0,
                  child: Container(
                    height: 150.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xfff8f8f8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Tai Ping Chinese Cuisine For Long Text",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 24.0,
                                    color: Color(0xff454f63),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(
                                  Icons.verified_user,
                                  color: Color(0xfff69223),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Chinese / Restaurant",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 16.0,
                                  color: Color(0xfff69223),
                                ),
                              ),
                              Wrap(
                                children: <Widget>[
                                  Icon(
                                    Icons.monetization_on,
                                    color: Color(0xfff69223),
                                    size: 18.0,
                                  ),
                                  Icon(
                                    Icons.monetization_on,
                                    color: Color(0xfff69223),
                                    size: 18.0,
                                  ),
                                  Icon(
                                    Icons.monetization_on,
                                    color: Color(0xfff69223),
                                    size: 18.0,
                                  ),
                                  Icon(
                                    Icons.attach_money,
                                    color: Color(0xfff69223),
                                    size: 18.0,
                                  ),
                                  Icon(
                                    Icons.attach_money,
                                    color: Color(0xfff69223),
                                    size: 18.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                    appBar: PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: Material(
                    color: Colors.white,
                    child: TabBar(
                      controller: _tabController,
                      labelColor: Color(0xff454f63),
                      unselectedLabelColor: Color(0xffbfc4ce),
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            "Info",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Reservation",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Review (34)",
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Center(
                    child: Text("Coming soon"),
                  ),
                  Center(
                    child: Text("Coming soon"),
                  ),
                  Center(
                    child: Text("Coming soon"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
