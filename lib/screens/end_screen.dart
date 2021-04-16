import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui';
// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:holywordsmuslim/logic/data/profiles_model.dart';
import 'package:holywordsmuslim/main.dart';
import 'package:holywordsmuslim/screens/menu.dart';
import '../logic/variables.dart';

class EndScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget child;
    if (!gameLose) {
      child = GameWon();
    } else {
      child = GameLost();
    }
    return new Container(child: child);
  }
}

class ButtonsToMenu extends StatelessWidget {
  Widget build(BuildContext context) {
    // final Profile profile = Profile();
    return new Column(
      children: <Widget>[
        //Restart button

        SizedBox(
          width: 250,
          child: RaisedButton(
              textColor: Colors.white,
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.autorenew, size: 33.0),
                  //Small padding that make space evenly look even better
                  SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    "Restart",
                  ),
                ],
              ),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {
                //TODO: double check if this works properly? Maybe add the arab writing? Maeybe reset the score here?
                cardValues = [];
                quoteChoicesAfterMenu = [];
                fillerChoicesAfterMenu = [];
                cardTextList0 = [];
                cardTextList1 = [];
                cardTextList2 = [];
                cardTextList3 = [];
                cardTextList4 = [];

                // Going to another screen via an animation "scale" and resuming the game
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              }),
        ),

        //Padding between buttons
        SizedBox(height: 20),

        //Menu button
        SizedBox(
          width: 250,
          child: RaisedButton(
              textColor: Colors.white,
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.home, size: 33.0),
                  //Small padding that make space evenly look even better
                  SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    "MainMenu",
                  ),
                ],
              ),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {
                // profile.incrementCount();
                // incrementCount();
                // Going to another screen via an animation "scale" and resuming the game
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilPage()),
                );
              }),
        ),

        //Padding between buttons
        SizedBox(height: 20),
        //End App button
        SizedBox(
          width: 250,
          child: RaisedButton(
              textColor: Colors.white,
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.close, size: 33.0),
                  //Small padding that make space evenly look even better
                  SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    "End Game",
                  ),
                ],
              ),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {
                exit(0);
              }),
        ),
      ],
    );
  }
}

class GameWon extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Padding from the top
            SizedBox(height: 30),

            //BLOCK OF BUTTONS
            ButtonsToMenu(),
          ],
        ));
  }
}

class GameLost extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        color: Colors.brown,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 70),

            //Animation for lost game
            //Next release: can improve this?
            // ColorizeAnimatedTextKit(
            //     text: ["Please try again!!!"],
            //     textStyle: TextStyle(
            //       fontSize: 50.0,
            //       fontFamily: "Horizon",
            //       fontWeight: FontWeight.bold,
            //       letterSpacing: 1.5,
            //     ),
            //     colors: [
            //       Colors.purple,
            //       Colors.blue,
            //       Colors.yellow,
            //       Colors.red,
            //     ],
            //     //This widget has non standard alignment property - beware the syntax
            //     textAlign: TextAlign.center,
            //     alignment: AlignmentDirectional.topStart),

            //Padding to the buttons of the menu
            SizedBox(
              height: 70.0,
            ),

            ButtonsToMenu(),
          ],
        ));
  }
}
