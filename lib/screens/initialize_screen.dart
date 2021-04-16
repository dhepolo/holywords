import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/global_state.dart';

import '../screens/game_loop_screen.dart';

class GameInitializeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvider(builder: (context) is deprecated
    // https://stackoverflow.com/questions/59100723/flutter-changenotifierprovider-builder-is-deprecated
    return Scaffold(
      appBar: AppBar(
        title: Text('Push to initialize'),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          //Initialize button
          RaisedButton(
            child: Text("Initialize"),
            onPressed: (() {
              AppState gs = Provider.of<AppState>(context, listen: false);
              //by using gs --> instead of provider. easier to read imho

              gs.initialize();
              print("you clicked initialize");
              print("total perm score before playing is  ${gs.permanentScore}");
              print("your first value in cardList0 is ${gs.cardTextList0[0]}");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GameLoopScreen()),
              );
            }),
          ),
        ],
      )),
    );
  }
}
