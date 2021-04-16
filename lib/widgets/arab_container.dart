import 'package:flutter/material.dart';

Widget buildArabContainer(x) {
  return Container(
    margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),

    constraints: BoxConstraints(
      maxHeight: 250.0,
      maxWidth: 250.0,
      minHeight: 200.0,
      minWidth: 200.0,
    ),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.black,
    ),

    //A  text inside a container that is itself inside a container...
    // The text does not have enough property for a proper wrapping
    // Container parent will do that for the text with the BoxConstraints.expand()
    // The grand parent container is there to give limits to avoid that the container
    // that contains the Text becomes infinite.
    child: Container(
      constraints: BoxConstraints.expand(
        height: 150.0,
        width: 150.0,
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      //padding
      margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
      child: Text(
        //variable passing the arabian text
        x,

        textAlign: TextAlign.center,

        style: TextStyle(
          color: Colors.amber,
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
