import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String descriptionPlace;
  String namePlace;
  int stars;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final iconStar = new Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: new Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final emptyStar = new Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: new Icon(
        Icons.star_border,
        color: Colors.black26,
      ),
    );

    final halfStar = new Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: new Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final placeDescription = Row(
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
            descriptionPlace,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "Lato",
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
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
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
