import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget{

  final String text;
  final VoidCallback onPressed; //recibe un comportamiento o funcion como parametro
  double height =0.0;
  double width = 0.0;

  ButtonGreen({Key key, @required this.text, @required this.onPressed, this.height, this.width});

  @override
  State<StatefulWidget> createState() {
    return _ButtonGreen();
  }

}

//widget se utiliza para acceder a variables desde una clase hija o inner.

class _ButtonGreen extends State<ButtonGreen>{

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          gradient: LinearGradient(
              colors: [
                Color(0xFFa7ff84),//arriba
                Color(0xFF1cbb78),//abajo
              ],
            begin: FractionalOffset(0.2,0.0),
            end: FractionalOffset(1.0,0.6),
            stops: [0.0,0.6],
            tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }


}