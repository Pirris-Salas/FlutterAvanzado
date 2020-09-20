import 'package:flutter/material.dart';
import 'dart:developer';

class CountingStars extends StatelessWidget {

  int numberStars;

  CountingStars(this.numberStars);

  @override
  Widget build(BuildContext context) {


    Widget star(bool withBorder) {

        return new Container(
          margin: EdgeInsets.only(
            left: 1.0,
          ),
          child: Icon(
           withBorder ? Icons.star : Icons.star_border,
            color: Color(0xFFf2C611),
          ),
        );

    }

      Widget showStars(numberStars) {

        List<Widget> rowStars = [];
        List<Widget> rowStarsBorder = [];

        List(numberStars).forEach((i) => rowStars.add(star(true)));
        List((numberStars - 5).abs()).forEach((i) => rowStarsBorder.add(star(false)));

        List<Widget> finalStars = []..addAll(rowStars)..addAll(rowStarsBorder);

        return new Row(
          children: finalStars,
        );
      }

      return showStars(numberStars);
    }


  }

