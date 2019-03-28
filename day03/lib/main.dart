import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day 03',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              body1: TextStyle(fontSize: 18.0),
              button: TextStyle(fontSize: 18.0))),
      home: Day03HomePage(),
    );
  }
}

class Day03HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Day 03")),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: ControlsWidget()
        ));
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
        RaisedButton(child: Text("Click me!"), onPressed: _copyToText)
      ],
    );
  }
}

class ControlsWidget extends StatefulWidget {
  @override
  _ControlsState createState() => _ControlsState();
}

