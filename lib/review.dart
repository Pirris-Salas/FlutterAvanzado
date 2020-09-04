import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'counting_stars.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {

  String imageUrl = "assets/img/profile.jpg";
  String name;
  String details;
  String comment;
  int startsNumber;


  Review(this.imageUrl, this.name, this.details, this.comment, this.startsNumber);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 10.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );


    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 1.0,
            left: 10.0,
            right: 1.5,
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7),
            ),
          ),
        ),
        CountingStars(startsNumber),
      ],
    );

    final userComment = Container(
      //width: MediaQuery.of(context).size.width * 0.6,
      margin: EdgeInsets.only(
        top: 1.0,
        left: 10.0,
      ),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          //maxLines: 3,
          //overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),

    );

    final userDetails = Flexible(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment

      ],
    )
    );


    final Widget picture = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 10.0
      ),
      height: 83.0,
      width: 83.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imageUrl),
          )
      ),
    );


   return Row(
     children: <Widget>[
       picture,
       userDetails,
     ],
   );
  }



}
