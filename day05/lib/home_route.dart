import 'package:flutter/material.dart';

import 'base_route.dart';
import 'second_route.dart';

void _navigateToSecondRoute(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()));
}

class HomeRoute extends BaseRoute {
  @override
  Widget build(BuildContext context) {
    return withScaffoldAndAppBar(child: ControlsWidget(),
    actions: [
      appBarButton("Show",
        action: () => _navigateToSecondRoute(context)
      )
    ]);
  }

}

class _ControlsState extends State<ControlsWidget> {
  String _text = "Hello World";
  String _editContents = "";

  void _copyToText() {
    setState(() {
      _text = _editContents;
    });
  }

  void _updateEditContents(String v) {
    setState(() {
      _editContents = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(_text),
        TextField(onChanged: _updateEditContents),
        RaisedButton(child: Text("Click me!"), onPressed: _copyToText),
        RaisedButton(
            child: Text("Show New View"),
            onPressed: () => _navigateToSecondRoute(context))
      ],
    );
  }
}

class ControlsWidget extends StatefulWidget {
  @override
  _ControlsState createState() => _ControlsState();
}

