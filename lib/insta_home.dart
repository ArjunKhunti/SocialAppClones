import 'package:flutter/material.dart';
import 'insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assests/images/instaLogo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: topBar,
      body: new InstaBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            new IconButton(
              icon: Icon(Icons.search),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(Icons.add_box),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(Icons.favorite),
              onPressed: null,
            ),
            new IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
