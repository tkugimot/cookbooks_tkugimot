import 'package:cookbooks_tkugimot/common/OriginalAppBar.dart';
import 'package:cookbooks_tkugimot/common/OriginalDrawer.dart';
import 'package:cookbooks_tkugimot/models/Todo.dart';
import 'package:cookbooks_tkugimot/screens/BottomNavigationScreen.dart';
import 'package:cookbooks_tkugimot/screens/FetchJsonScreen.dart';
import 'package:cookbooks_tkugimot/screens/GridListScreen.dart';
import 'package:cookbooks_tkugimot/screens/LoginScreen.dart';
import 'package:cookbooks_tkugimot/screens/PassDataScreen.dart';
import 'package:cookbooks_tkugimot/screens/TabsTopScreen.dart';
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
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Tabs Top'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabsTopScreen())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Navigation bars'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigationScreen())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Pass Data'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PassDataScreen(
                      todoList: List<Todo>.generate(20, (index) =>
                          Todo(index, "Todo $index", "A description of todo $index"))
                  ))
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Fetch json'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FetchJsonScreen())
              );
            },
          ),
        ],
      ),
      // drawer: top-left
      // endDrawer: top-right
      endDrawer: OriginalDrawer()
    );
  }
}

