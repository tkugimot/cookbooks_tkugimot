import 'package:cookbooks_tkugimot/clients/AlbumClient.dart';
import 'package:cookbooks_tkugimot/models/Album.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FetchJsonScreen extends StatefulWidget {

  FetchJsonScreen({Key key}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FetchJsonState();
  }
}

class FetchJsonState extends State<FetchJsonScreen> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}