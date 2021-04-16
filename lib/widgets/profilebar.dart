import 'package:flutter/material.dart';
import 'package:holywordsmuslim/logic/CircleProgress.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:steps_indicator/steps_indicator.dart';

import '../view.dart';
import '../logic/variables.dart';
import '../logic/global_state.dart';
import '../widgets/constants.dart';

import 'constants.dart';

class ProfileBarPage extends StatefulWidget {
  @override
  _ProfileBarPageState createState() => _ProfileBarPageState();
}

class _ProfileBarPageState extends State<ProfileBarPage> {
  @override
  Widget build(BuildContext context) {
    // }
    if (intExp >= 100) {
      setState(() {
        level1();
      });
    }
    if (intExp >= 200) {
      setState(() {
        level2();
      });
    }
    if (intExp >= 300) {
      setState(() {
        level3();
      });
    }

    return Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      color: Colors.green[900],
      child: Column(children: <Widget>[
        SizedBox(height: 20.0),
        Row(children: <Widget>[
          SizedBox(width: 15.0),
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage('assets/pix/person.jpg'),
            backgroundColor: Colors.transparent,
          ),
          Spacer(),
          Column(children: <Widget>[
            const Text(
              'Welcome Back, Person',
              style: kPtsansTextStyle,
            ),
            Text('Your Progress Looking Good!', style: kPtsansTextStyle),
          ]),
          Spacer(),
          IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(width: 15.0),
        ]),
        SizedBox(height: 15.0),

        //https://pub.dev/packages/steps_indicator
        // StepsIndicator(
        //   selectedStep: steppoint,
        //   nbSteps: 11,
        //   selectedStepColorOut: Colors.white,
        //   selectedStepColorIn: Colors.green,
        //   doneStepColor: Colors.green,
        //   doneLineColor: Colors.white,
        //   undoneLineColor: Colors.white10,
        //   lineLength: 20,
        //   doneLineThickness: 3,
        // ),

        SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            SizedBox(width: 15.0),
            Text('$levelIndex', style: kPtsansTextStyle),
            Spacer(),
            CircularStepProgressIndicator(
              totalSteps: 11,
              currentStep: steppoint,
              selectedColor: Colors.blueAccent,
              unselectedColor: Colors.grey[200],
              selectedStepSize: 10.0,
              width: 100,
            ),
            // CirclePage(),
            Spacer(),
            Text('Exp $intExp / $targetIndex', style: kPtsansTextStyle),
            SizedBox(width: 15.0),
          ],
        ),
        RaisedButton(
          child: Text('Tester'),
          onPressed: () {
            setState(() {
              incrementCount();
              print("increment success");
            });
          },
        ),
        SizedBox(height: 5.0),
      ]),
    );
  }
}
