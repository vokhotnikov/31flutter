import 'package:flutter/material.dart';

Widget wrapForTesting(Widget child) {
  return MaterialApp(home: Material(child: child));
}