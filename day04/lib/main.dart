import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day 04',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              body1: TextStyle(fontSize: 18.0),
              button: TextStyle(fontSize: 18.0))),
      home: Day04HomePage(),
    );
  }
}

class Day04HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Day 04"),
          actions: <Widget>[
            FlatButton(
              child: Text("Show",
                  style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondRoute())),
            )
          ],
        ),
        body:
            Container(padding: EdgeInsets.all(16.0), child: ControlsWidget()));
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
            onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondRoute()))
                })
      ],
    );
  }
}

class ControlsWidget extends StatefulWidget {
  @override
  _ControlsState createState() => _ControlsState();
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Day 04")),
        body: Container(
            padding: EdgeInsets.all(16.0),
            child: Center(
                child: RaisedButton(
                    child: Text("Close Modal"),
                    onPressed: () => Navigator.pop(context)))));
  }
}
