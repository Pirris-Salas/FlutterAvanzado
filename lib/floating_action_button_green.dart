import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State <FloatingActionButtonGreen> with AutomaticKeepAliveClientMixin{

  bool icon;
  void onPressedFav(){
    setState(() {
      // ignore: unnecessary_statements
     icon = !icon;
    });
  }

  void initState(){
    super.initState();
    this.icon = false;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
   return FloatingActionButton(
     backgroundColor: Color(0xFF11DA53),
     mini: true,
     tooltip: "Favorite",
     onPressed: onPressedFav,
     child: Icon(
       icon ? Icons.favorite : Icons.favorite_border,
       color: Colors.white,
     ),
   );
  }







}