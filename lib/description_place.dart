
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final iconStar =
    new Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: new Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final emptyStar =
    new Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: new Icon(
        Icons.star_border,
        color: Colors.black26,
      ),
    );

    final halfStar =
    new Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: new Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final placeDescription =
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Container(
    margin: EdgeInsets.only(
      top: 17,
      right: 2.0,
      left: 2.0,
    ),
        child: Text(
    """
        Knuckles Duwili Ellla can be recognized as one 
     of the dream destination for any hiker. 
     Difficulty of reaching the destination has increased 
     the beauty of this location. It’s around 32Km Trek up
     and down. There are few roads you can use to reach 
     this destination. Some of the roads those I’ve heard 
     are Rambukoluwa, Atanwala, Meemure, Ranamure.
    """,
    textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 14,
          ),
    ),
    ),
    ],
    );


    final titleStars = Row(
    children: <Widget>[
    new Container(
    margin: EdgeInsets.only(
    top: 320.0,
    right: 20.0,
    left: 20.0,
    ),
    child: Text(
    "Duwili Ella",
    style: TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.w900,
    ),
    textAlign: TextAlign.left,
    ),
    ),
    Row(
    children: <Widget>[
    iconStar,
    iconStar,
    iconStar,
    halfStar,
    emptyStar,
    ],
    ),
    ],
    );

    return Stack(
    children: <Widget>[
    Column(
    children: <Widget>[
    titleStars,
    placeDescription,
    ],
    )
    ],
    );
  }


}