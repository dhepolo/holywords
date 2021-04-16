import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../logic/global_state.dart';
import '../widgets/arab_container.dart';
import '../widgets/image_slider_container.dart';

import 'final_screen.dart';

//TODO: refactor the look and feel of the widget

//TODO: remove text arab

class GameLoopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: Container(
            padding: EdgeInsets.all(16),
            child: Consumer<AppState>(builder: (context, gs, child) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //next widget is reused by all screens and in a separate file in the widget folder
                    buildArabContainer(cardValues[gs.trialMaxFive].arabQuote),

                    //variable passing the reference of the quote
                    //TODO: remove this temporary field
                    Text(
                      cardValues[gs.trialMaxFive].refQuote,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          autoPlayInterval: Duration(seconds: 5),
                          enlargeCenterPage: true,
                          onPageChanged: (indexCarousel, reason) {
                            gs.carousel(indexCarousel);
                            print(gs.cardTextList0[0]);
                          }),
                      items: ([
                        buildImageBuilderContainer(gs.cardTextList0[0]),
                        buildImageBuilderContainer(gs.cardTextList0[1]),
                        buildImageBuilderContainer(gs.cardTextList0[2])
                      ]),
                    ),

                    //Button that validates the choice
                    //Checks if is the right thing
                    //TODO: change to elevatedButton?

                    RaisedButton(
                      onPressed: () {
                        gs.checkQuote0(gs.choice);

                        if (gs.trial >= 5) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EndPage()),
                          );
                        }

                        // if (gs.score >= 3) {
                        //   gs.stepperPoint();
                        // }
                      },
                      child: Text(
                        "validate my choice",
                        style: TextStyle(fontSize: 25, color: Colors.blue),
                      ),
                    ),
                  ]);
            })));
  }
}
