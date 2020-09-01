import 'package:flutter/material.dart';

class ChallengeTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Background(),
        new Logo(),
      ],
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: new Center(
            heightFactor: 15,
            widthFactor: 1.5,
            child: Text(
              " * CHRIS ",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: new Center(
            heightFactor: 17,
            widthFactor: 3.5,
            child: Text(
              "             BARBERIA * ",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 24.0),
      decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/wall.jpg"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.65), BlendMode.darken))),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            width: 190.0,
            height: 190.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/logo.ico"),
                  colorFilter: new ColorFilter.mode(
                  Colors.transparent.withOpacity(0.46), BlendMode.dstATop
                  )
                )),
          )
        ],
      ),
    );
  }
}

/**
    new Stack(
    children: <Widget>[
    new Container(
    decoration: new BoxDecoration(
    image: new DecorationImage(image: new AssetImage("assets/wall.jpg"), fit: BoxFit.cover)
    ),
    )
    ],
    )


    Expanded(
    flex: 3,
    child: new Center(
    heightFactor: 13,
    widthFactor: 1.5,
    child: Text(
    " * CHRIS ",
    textAlign: TextAlign.start,
    style: TextStyle(
    color: Colors.white,
    fontSize: 35,
    ),
    ),
    ),
    ),
    Expanded(
    flex: 7,
    child: new Center(
    heightFactor: 15,
    widthFactor: 3.5,
    child: Text(
    "             BARBERIA * ",
    textAlign: TextAlign.end,
    style: TextStyle(
    color: Colors.white,
    fontSize: 35,
    ),
    ),
    ),
    )

    new Row(
    children: <Widget>[
    new Container(
    width: MediaQuery.of(context).size.width,
    height: 104.0,
    color: Colors.white10,
    )
    ],
    )


 */
