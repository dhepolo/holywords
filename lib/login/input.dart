import 'package:flutter/material.dart';
import 'package:holywordsmuslim/logic/Transtision.dart';

import '../view.dart';
import '../widgets/constants.dart';
import '../screens/menu.dart';

class InputLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Column(children: <Widget>[
          // Image(
          //   image: AssetImage('assets/pix/logoholy.png'),
          //   width: 600.0,
          //   height: 300.0,
          // ),
          Container(
            width: 300.0,
            height: 250.0,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(20.0)),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/pix/logoholy.png"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.transparent.withOpacity(0.1),
              ),
              width: 300.0,
              padding: EdgeInsets.all(5.0),
              child: Center(
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    TextField(
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Ptsans',
                      ),
                      decoration: kPtsansTextFieldStyleUser,
                    ),
                  ]))),
          SizedBox(
            height: 8.0,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.transparent.withOpacity(0.1),
              ),
              width: 300.0,
              padding: EdgeInsets.all(5.0),
              child: Center(
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    TextField(
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Ptsans',
                        // color: Colors.blueAccent,
                      ),
                      decoration: kPtsansTextFieldStylePass,
                    ),
                  ]))),
          SizedBox(
            height: 8.0,
          ),
          ButtonTheme(
            minWidth: 300.0,
            height: 60.0,
            child: RaisedButton(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'LOG IN',
                    style: kPtsansButton,
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ProfilPage()),
                  // );
                  Navigator.push(context, SlideLeftRoute(page: ProfilPage()));
                }),
          ),
        ]));
  }
}
