import 'package:cookbooks_tkugimot/screens/GridListScreen.dart';
import 'package:cookbooks_tkugimot/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class OriginalDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(color: Colors.cyan),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen())
                );
              },
            ),
            ListTile(
              title: Text('GridList'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridListScreen())
                );
              },
            )
          ],
        )
    );
  }
}