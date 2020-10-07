
import 'package:flutter/material.dart';
import 'package:my_trips_flutter_app/widgets/button_gmail.dart';
import 'package:my_trips_flutter_app/widgets/button_green.dart';
import 'package:my_trips_flutter_app/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }

}

class _SignInScreen extends State<SignInScreen>{

  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  Widget signInGoogleUI(){
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack(" ",height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome\n This is your Travel App",
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //ButtonGreen(text: "Login with Gmail", onPressed: (){}, width: 300.0, height: 50.0)
              ButtonGmail(onPressed: (){})
            ],
          ),
        ],
      ),
    );
  }


}