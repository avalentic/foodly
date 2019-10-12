import 'package:flutter/material.dart';
import 'package:foodly/navigation_handler.dart';

void main() => runApp(Foodly());

class Foodly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodly',
      debugShowCheckedModeBanner: false,
      home: NavigationHandler(),
    );
  }
}
