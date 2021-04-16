import 'package:flutter/material.dart';

import 'input.dart';
import 'loginwith.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/pix/mosque.jpg"),
                colorFilter:
                    ColorFilter.mode(Colors.greenAccent, BlendMode.hue),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InputLoginPage(),
              SizedBox(height: 10.0),
              Text(
                "Or Login With",
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              SizedBox(height: 20),
              LoginWithPage(),
              SizedBox(height: 55.0),
              SignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
