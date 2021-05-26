import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotways/screens/mainpage.dart';
import 'package:spotways/utils/color_codes.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MainPage(title: "Centers",),
    MainPage(title: "CentersR",),
    MainPage(title: "CenterEs",),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:ColorCodes.colorPrimary,
        currentIndex: 0,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Home'),
          ),

          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.searchLocation),
              title: Text('Home'),
          ),

          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendar),
              title: Text('Home'),
          ),






        ],


      ),

      body: _children[_currentIndex],
    );
  }

  final topAppBar = AppBar(
    elevation: 0.1,

    backgroundColor: Colors.white,
    title: Text("SpotWays", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.list),
        onPressed: () {},
      )
    ],
  );

  void onTabTapped(index){
    setState(() {
      _currentIndex = index;
    });
  }
}
