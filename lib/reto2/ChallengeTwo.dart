import 'package:flutter/material.dart';

class ChallengeTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Background(),
        Content(),
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
                  Colors.black.withOpacity(0.65), BlendMode.darken)
          )
      ),
    );
  }
}

class Content extends StatelessWidget{
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


 */