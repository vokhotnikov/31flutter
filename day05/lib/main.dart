import 'package:flutter/material.dart';
import 'home_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day 05',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              body1: TextStyle(fontSize: 18.0),
              button: TextStyle(fontSize: 18.0))),
      home: HomeRoute(),
    );
  }
}

