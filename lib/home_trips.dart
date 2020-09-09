import 'package:flutter/material.dart';
import 'package:my_trips_flutter_app/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  String description =
  """
        Knuckles Duwili Ellla can be recognized as one 
     of the dream destination for any hiker.
     Difficulty of reaching the destination has increased 
     the beauty of this location. It’s around 32Km Trek up
     and down.
     There are few roads you can use to reach 
     this destination. Some of the roads those I’ve heard 
     are Rambukoluwa, Atanwala, Meemure, Ranamure.
    """;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Duwili Ella", 3, description),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }


}