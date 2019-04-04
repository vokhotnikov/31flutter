import 'package:flutter/material.dart';

abstract class BaseRoute extends StatelessWidget {
  Widget withScaffoldAndAppBar({@required Widget child, List<Widget> actions}) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Flutter Day 05"),
            actions: actions ?? []
        ),
        body: Container(
            padding: EdgeInsets.all(16.0),
            child: child));
  }

  Widget appBarButton(String title, {VoidCallback action}) {
    return FlatButton(
      child: Text(title, style: TextStyle(color: Colors.white)),
      onPressed: action
    );
  }
}