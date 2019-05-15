import 'package:flutter/material.dart';

import 'base_route.dart';

class SecondRoute extends BaseRoute {
  @override
  Widget build(BuildContext context) {
    return withScaffoldAndAppBar(
        child: Center(
            child: RaisedButton(
                child: Text("Close Modal"),
                onPressed: () => Navigator.pop(context))));
  }
}
