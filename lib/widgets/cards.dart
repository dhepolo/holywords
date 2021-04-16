import 'package:flutter/material.dart';
import 'package:holywordsmuslim/logic/Transtision.dart';
import 'package:holywordsmuslim/screens/initialize_screen.dart';

import 'package:intl/intl.dart';
import 'package:bordered_text/bordered_text.dart';

import '../logic/data/cards_model.dart';

import 'carrousells.dart';
import 'constants.dart';

import 'dart:ui';

import '../logic/item_gen.dart';

import '../logic/variables.dart';

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  static DateTime now = DateTime.now();
  static DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(now);
  bool isSwitched = false;
  Randomizer rndmzr = Randomizer();

  Future navigateToSubPage(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GameInitializeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  rndmzr.randomizer();
                  navigateToSubPage(context);
                  score = 0;
                  cardTextList0 = [
                    cardValues[0].translationQuoteID,
                    cardValues[0].quoteTranslationFiller1,
                    cardValues[0].quoteTranslationFiller2,
                  ];
                  cardTextList1 = [
                    cardValues[1].translationQuoteID,
                    cardValues[1].quoteTranslationFiller1,
                    cardValues[1].quoteTranslationFiller2,
                  ];
                  cardTextList2 = [
                    cardValues[2].translationQuoteID,
                    cardValues[2].quoteTranslationFiller1,
                    cardValues[2].quoteTranslationFiller2,
                  ];
                  cardTextList3 = [
                    cardValues[3].translationQuoteID,
                    cardValues[3].quoteTranslationFiller1,
                    cardValues[3].quoteTranslationFiller2,
                  ];
                  cardTextList4 = [
                    cardValues[4].translationQuoteID,
                    cardValues[4].quoteTranslationFiller1,
                    cardValues[4].quoteTranslationFiller2,
                  ];

                  cardTextList0.shuffle();
                  cardTextList1.shuffle();
                  cardTextList2.shuffle();
                  cardTextList3.shuffle();
                  cardTextList4.shuffle();
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                  height: 180.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.blue[100], Colors.green[100]],
                    ),
                  ),
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Spacer(),
                        SizedBox(
                          width: 45.0,
                        ),
                        Column(children: <Widget>[
                          BorderedText(
                            strokeColor: Colors.blue[200],
                            strokeWidth: 1.0,
                            child: Text(
                              surat[index],
                              style: kPtsansTextStyleCards,
                            ),
                          ),
                        ]),
                        Spacer(),
                        BorderedText(
                          strokeColor: Colors.blue[200],
                          strokeWidth: 1.0,
                          child: Text(
                            "$formatted",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    BorderedText(
                      strokeColor: Colors.blue[200],
                      strokeWidth: 1.0,
                      child: Text(
                        lines[index],
                        style: kPtsansTextStyleCards,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    RaisedButton(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'See Progress',
                            style: TextStyle(
                              fontFamily: 'Ptsans',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.blue[200],
                            ),
                          ),
                        ),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        onPressed: () {
                          setState(() {
                            incrementCount();
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Carroussel()),
                            // );
                            Navigator.push(
                                context, SlideLeftRoute(page: Carroussel()));
                          });
                        }),
                  ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
