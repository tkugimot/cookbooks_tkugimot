import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List Screen';
    return Scaffold(
        appBar: AppBar(
          title: new Text(
            title,
            style: new TextStyle(color: Colors.white),
          ),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(12, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
    );
  }
}