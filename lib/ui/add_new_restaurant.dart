import 'package:flutter/material.dart';

class AddNewRestaurant extends StatefulWidget {
  @override
  _AddNewRestaurantState createState() => _AddNewRestaurantState();
}

class _AddNewRestaurantState extends State<AddNewRestaurant> {
  List<String> _states = ["Bjelovarsko-bilogorska", "Zagrebacka"];
  List<String> _countries = ["Croatia", "Slovenia", "Hungary", "Belgium"];
  List<String> _cities = ["Bjelovar", "Zagreb", "Osijek"];
  String _selectedCountry, _selectedState, _selectedCity;

  @override
  void initState() {
    super.initState();
    _selectedCountry = null;
    _selectedState = null;
    _selectedCity = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Add New Business",
          style: TextStyle(
            fontFamily: "Roboto",
            color: Color(0xff454f63),
            fontSize: 24.0,
          ),
        ),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xfff7f7fa),
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Basic Info",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20.0,
                        color: Color(0xff454f63),
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: _buildTextInput(
                      "Business Name",
                      Icons.store,
                      TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: _buildTextInput(
                      "Phone Number",
                      Icons.phone,
                      TextInputType.phone,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: _buildTextInput(
                      "Email",
                      Icons.email,
                      TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: _buildTextInput(
                      "Website",
                      Icons.language,
                      TextInputType.url,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Location",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20.0,
                          color: Color(0xff454f63),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Icon(
                              Icons.flag,
                              color: Color(0xff454f63),
                            ),
                          ),
                          Expanded(
                            child: DropdownButton(
                              value: _selectedCountry,
                              underline: Container(),
                              isExpanded: true,
                              hint: Text(
                                "Country",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Color(0xff454f63),
                                ),
                              ),
                              items: _countries.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  _selectedCountry = newValue;
                                });
                              },
                              icon: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 0,
                                      decoration: new BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffb5b9c1),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        color: Color(0xff454f63),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Icon(
                              Icons.business,
                              color: Color(0xff454f63),
                            ),
                          ),
                          Expanded(
                            child: DropdownButton(
                              value: _selectedState,
                              underline: Container(),
                              isExpanded: true,
                              hint: Text(
                                "State",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Color(0xff454f63),
                                ),
                              ),
                              items: _states.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  _selectedState = newValue;
                                });
                              },
                              icon: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 0,
                                      decoration: new BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffb5b9c1),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        color: Color(0xff454f63),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Icon(
                              Icons.location_city,
                              color: Color(0xff454f63),
                            ),
                          ),
                          Expanded(
                            child: DropdownButton(
                              value: _selectedCity,
                              underline: Container(),
                              isExpanded: true,
                              hint: Text(
                                "City",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Color(0xff454f63),
                                ),
                              ),
                              items: _cities.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  _selectedCity = newValue;
                                });
                              },
                              icon: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 0,
                                      decoration: new BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffb5b9c1),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        color: Color(0xff454f63),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: _buildTextInput(
                      "Postcode",
                      Icons.date_range,
                      TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: _buildTextInput(
                      "Street Address",
                      Icons.pin_drop,
                      TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            width: 115,
                            height: 35,
                            decoration: new BoxDecoration(
                              color: Color(0xff8cc540),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Add",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_buildTextInput(String hintText, IconData icon, TextInputType keyboardType) {
  return Container(
    height: 60,
    decoration: new BoxDecoration(
      color: Colors.white,
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
    child: Center(
      child: TextField(
        maxLines: 1,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 1.0),
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: Color(0xff454f63),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: "Roboto",
            color: Color(0xff454f63),
          ),
          labelText: hintText,
          labelStyle: TextStyle(
            fontFamily: "Roboto",
            color: Color(0xffb3bac9),
          ),
        ),
      ),
    ),
  );
}
