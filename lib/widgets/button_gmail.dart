import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class ButtonGmail extends StatefulWidget{

  final VoidCallback onPressed;

  ButtonGmail({@required this.onPressed});

  @override
  State<StatefulWidget> createState() {
   return _ButtonGmail();
  }

}

class _ButtonGmail extends State<ButtonGmail>{

  @override
  Widget build(BuildContext context) {
   return GoogleSignInButton(
     onPressed: widget.onPressed,
     borderRadius: 10.0,
     darkMode: true,
   );
  }
}