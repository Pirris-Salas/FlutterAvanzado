import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../../widgets/button_purple.dart';

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

    final placeDescription = Container(
      //width: MediaQuery.of(context).size.width - 4,
      margin: EdgeInsets.only(
        top: 20,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(
        descriptionPlace,
        //overflow: TextOverflow.ellipsis,
        //maxLines: 20,
        style: const TextStyle(
            fontSize: 15.5,
            fontFamily: "Lato",
            fontWeight: FontWeight.w500,
            color: Color(0xFF56575a)
          //letterSpacing: 0.5
        ),
      ),
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

    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    titleStars,
    placeDescription,
    ButtonPurple("Navigate"
    )
    ,
    ]
    ,
    );
  }
}
