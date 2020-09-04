import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  String imageUrl = "assets/img/profile.jpg";
  String imageSuqui = "assets/img/suqui.jpg";
  String imageRamirez= "assets/img/ramirez.jpg";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Review(imageUrl, "Luis Salas", "1 Review * 5 Photos", "Very nice place, I'll recommend it to all my fellows forever!",4),
        new Review(imageSuqui, "Fiorella Vargas", "3 Review * 2 Photos", "Horrible place, there was no a sushi restaurant, unbelievable!!",2),
        new Review(imageRamirez, "Ramirez Jose Ramirez", "1 Review * 1 Photos", "Beautiful place, I loved it. Next time I'll go with my puppy, Max.",5),
      ],
    );
  }
  
}