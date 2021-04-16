import 'package:flutter/material.dart';
// also using themedata in main.dart for styling

const kPtsansTextStyle = const TextStyle(
  fontFamily: 'Ptsans',
  color: Colors.white,
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  letterSpacing: 1.2,
);

const kPtsansTextStyleCards = const TextStyle(
  fontFamily: 'Ptsans',
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  letterSpacing: 1.2,
);

const kPtsansButton = const TextStyle(
  fontFamily: 'Ptsans',
  color: Colors.blue,
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  letterSpacing: 1.2,
);

const kPtsansTextFieldStyleUser = const InputDecoration(
  prefixIcon: Icon(
    Icons.person,
    size: 25.0,
  ),
  border: InputBorder.none,
  hintText: "USERNAME",
  hintStyle: TextStyle(color: Colors.black45),
);

const kPtsansTextFieldStylePass = const InputDecoration(
  prefixIcon: Icon(
    Icons.lock,
    size: 25.0,
  ),
  border: InputBorder.none,
  hintText: "PASSWORD",
  hintStyle: TextStyle(color: Colors.black45),
);

const kDragTextStyle = TextStyle(
  fontSize: 70,
  decoration: TextDecoration.none,
);

const kTextStyleRaisedButton = const TextStyle(
    fontFamily: 'Taviraj',
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.7,
    color: Colors.white);

const kTextStyleRaisedButton25Red = const TextStyle(
    fontFamily: 'Taviraj',
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.7,
    color: Colors.red);
