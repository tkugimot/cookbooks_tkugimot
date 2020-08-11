import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OriginalAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: new Text(
        "Second screen",
        style: new TextStyle(color: Colors.white),
      ),
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
