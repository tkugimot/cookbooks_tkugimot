import 'package:cookbooks_tkugimot/models/Todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PassDataScreen extends StatelessWidget {
  final String title = "Pass data";
  final List<Todo> todoList;

  // requiring the list of todoList
  PassDataScreen({Key key, @required this.todoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          title,
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(todoList[index].title),
              onTap: () {
                Navigator.pushNamed(
                    context,
                    'pass-data-detail',
                    arguments: todoList[index]
                );
              },
          );
        },
      )
    );
  }
}
