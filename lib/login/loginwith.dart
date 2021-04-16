import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//TODO: add guest button
class LoginWithPage extends StatefulWidget {
  @override
  _LoginWithPageState createState() => _LoginWithPageState();
}

class _LoginWithPageState extends State<LoginWithPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400]),
          child: FaIcon(
            FontAwesomeIcons.apple,
            size: 30,
          ),
        ),
        SizedBox(width: 15.0),
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
          child: FaIcon(
            FontAwesomeIcons.google,
            size: 30,
          ),
        ),
        SizedBox(width: 15.0),
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue[600],
          ),
          child: FaIcon(
            FontAwesomeIcons.facebook,
            size: 30,
          ),
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
}
