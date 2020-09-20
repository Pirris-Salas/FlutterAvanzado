import 'package:flutter/material.dart';
import 'Place/ui/screens/home_trips.dart';
import 'User/ui/screens/profile_trips.dart';
import 'Place/ui/screens/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTapped = 0;

  void onTapTapped(int index){
    setState(() {
      indexTapped = index;
    });
  }

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: widgetsChildren[indexTapped],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
            currentIndex: indexTapped,
            onTap: onTapTapped,
            items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(""),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(""),
          ),
        ]),
      ),
    );
  }
}
