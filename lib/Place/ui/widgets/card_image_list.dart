import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/waterfall.jpg"),
          CardImage("assets/img/waterfall2.jpg"),
          CardImage("assets/img/fall.jpg"),
          CardImage("assets/img/forest.jpg"),
          CardImage("assets/img/rock.jpg"),
          CardImage("assets/img/camping.jpg"),
        ],
      ),
    );
  }
  
}