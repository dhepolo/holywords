import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/initialize_screen.dart';
import '../logic/global_state.dart';

class EndPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EndPage'),
        ),
        body:
            Container(child: Consumer<AppState>(builder: (context, gs, child) {
          return Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text('This is the EndPage'),
              Text('Your total permanent score is ${gs.permanentScore}'),
              SizedBox(height: 20),
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
                      // Going to another screen via an animation "scale" and resuming the game

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GameInitializeScreen()),
                      );
                    }),
              ),
            ],
          );
        })));
  }
}
