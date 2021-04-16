import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 15.0),
        children: <TextSpan>[
          TextSpan(text: "Don't have an account? "),
          TextSpan(
              text: 'Sign Up',
              style: TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("This not build yet, sorry");
                }),
        ],
      ),
    );
  }
}
