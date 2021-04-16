import 'package:flutter/material.dart';
import 'package:holywordsmuslim/widgets/carrousells.dart';
import '../logic/variables.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        border: Border.all(
          width: 3.0,
        ),
        color: Colors.green[900],
      ),
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {
              setState(() {
                tabBar0();
                print("tabbar0 success");
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {
              setState(() {
                tabBar1();
                print("tabbar1 success");
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {
              setState(() {
                tabBar2();
                print("tabbar2 success");
                changeL = false;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {
              setState(() {
                tabBar3();
                print("tabbar3 success");
              });
            },
          ),
        ],
      ),
    );
  }
}
