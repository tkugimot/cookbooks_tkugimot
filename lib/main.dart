import 'package:cookbooks_tkugimot/screens/BottomNavigationScreen.dart';
import 'package:cookbooks_tkugimot/screens/GridListScreen.dart';
import 'package:cookbooks_tkugimot/screens/HomeScreen.dart';
import 'package:cookbooks_tkugimot/screens/LoginScreen.dart';
import 'package:cookbooks_tkugimot/screens/PassDataScreen.dart';
import 'package:cookbooks_tkugimot/screens/TabsTopScreen.dart';
import 'package:cookbooks_tkugimot/screens/passdata/PassDataDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/Todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (BuildContext context) {  },),
      ],
      child: MaterialApp(
        title: 'Flutter cookbooks design',
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/login': (context) => LoginScreen(),
          '/grid-list': (context) => GridListScreen(),
          '/tabs-top': (context) => TabsTopScreen(),
          '/bottom-navigators': (context) => BottomNavigationScreen(),
          '/pass-data': (context) => PassDataScreen(
              todoList: List<Todo>.generate(20, (index) =>
                  Todo(index, "Todo $index", "A description of todo $index"))
          ),
          PassDataDetailScreen.routeName: (context) => PassDataDetailScreen(), // 'pass-data-detail'
        },
      ),
    );
  }
}
