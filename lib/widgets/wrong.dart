import 'package:flutter/material.dart';

class CardsMonthPage extends StatefulWidget {
  @override
  _CardsMonthPageState createState() => _CardsMonthPageState();
}

class _CardsMonthPageState extends State<CardsMonthPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(children: <Widget>[
      _cardsMonth(),
      _cardsMonth(),
      _cardsMonth(),
      _cardsMonth(),
      _cardsMonth(),
    ]));
  }

  Widget _cardsMonth() {
    return Container(
      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
      height: 170.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blue[100], Colors.green[100]],
        ),
      ),
      child: Column(children: <Widget>[
        Text("Small Stuf Add up!"),
        SizedBox(height: 20.0),
        Text("LastMonth, You memorized"),
        SizedBox(height: 20.0),
        Text(
          "30 Verse! Well DONE",
        ),
        SizedBox(height: 20.0),
        RaisedButton(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Done',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                  color: Colors.blue[200],
                ),
              ),
            ),
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            onPressed: () {}),
      ]),
    );
  }
}
