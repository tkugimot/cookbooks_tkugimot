import 'package:cookbooks_tkugimot/common/OriginalAppBar.dart';
import 'package:cookbooks_tkugimot/screens/GridListScreen.dart';
import 'package:cookbooks_tkugimot/screens/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = "Home Screen";
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          title,
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Login'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Grid List'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridListScreen())
              );
            },
          ),
        ],
      ),
    );
  }
}

