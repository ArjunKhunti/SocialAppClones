import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text(
            "Watch All",
            style: new TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );

  final stories = new Expanded(
      child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => new Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    new Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://images.pexels.com/photos/1024975/pexels-photo-1024975.jpeg?auto=format,compress&cs=tinysrgb&dpr=1&w=500"),
                          )),
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    index == 0
                        ? Positioned(
                            right: 10.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 10.0,
                              child: new Icon(
                                Icons.add,
                                size: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : new Container()
                  ],
                ),
          )
      )
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,

        ],
      ),
    );
  }
}
