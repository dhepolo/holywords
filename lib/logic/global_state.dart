// the opposite of constants.dart used for styling

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'item_gen.dart';

bool gameOver = false;
bool gameLose = false;

//TODO: The block below not used yet - link it to the menu and game choices
/*
bool hardGame = false;
bool scienceGame = false;

AssetImage backgroundImage;
*/
List cardValues = new List();
List quoteChoicesAfterMenu = new List();
List fillerChoicesAfterMenu = new List();
List<String> textArab = [];
List<String> fiveCorrectAnswers = [];

// A- There are mechanism of subsets from a flat file
// the flat file is item.dart - basically a few lists of strings per category
// these lists are constants like for instance quotesAndTranslationsCat1
// B- user at menu limits the lists used by making choices
// these parameters are served into another file in the logic folder
// misc_functions_gen.dart : quotesAndTranslationsCat1 --> quoteChoicesAfterMenu.
// fillerChoicesAfterMenu similar outcome
// C - quoteChoicesAfterMenu is used in item_gen.dart in the generateRandomQuote() function,
// fillers similar outcome
// C' - there is a list of correct answers being made and will validate the choices. The limitation here is that we cannot use correct answers
// to any question as a filler.
// D- avoiding duplicates by removing the element inside quoteChoicesAfterMenu
// D'- 5 elements are added to quotesWithoutFillersToDisplay. --> redone?
// E- quotesWithoutFillersToDisplay then goes into the parser with the fillers
// and are assembled into endResultofParser a list of 5 items models
// containing ref, arab, and translation from quote gen functions and 2 fillers from filler functions.
// F - endResultofParser list is used by the widgets / UI in the game screen

//TODO: have a debug check question making sure no translation is in the fillers. Otherwise throw an error.
class AppState extends ChangeNotifier {
  int _intExp = 0;
  int _steppoint = 0;
  int _point = 0;
  int _choice = 0;
  int _score = 0;
  int _trial = 0;
  int _trialMaxFive = 0;
  int _permanentScore = 0;
  Randomizer _rndmzr = Randomizer();
  List<String> _cardTextList0 = [];

  void initialize() {
    //also rebasing in case of restart
    _point = 0;
    _steppoint = 0;
    _choice = 0;
    _score = 0;
    _trial = 0;
    _trialMaxFive = 0;
    _cardTextList0.clear();
    cardValues.clear();
    fillerChoicesAfterMenu.clear();
    quoteChoicesAfterMenu.clear();
    textArab.clear();
    print("calling initialize");

    _rndmzr.randomizer();
    _getScoreFromSharedPreferences();

    if (_trial < 5) {
      _cardTextList0 = [
        cardValues[_trial].translationQuoteID,
        cardValues[_trial].quoteTranslationFiller1,
        cardValues[_trial].quoteTranslationFiller2,
      ];
      print("there are values for _cardTextList0 for example");
      print(_cardTextList0[0]);
    }

    _cardTextList0.shuffle();

    notifyListeners();
  }

  void carousel(int indexCarousel) {
    _choice = indexCarousel;
    print("_choice is value $_choice");
    print("indexCarousel is value $indexCarousel");

    notifyListeners();
  }

  void checkQuote0(x) {
    print("Your choice is $x");
    print("The choice being validated ${_cardTextList0[x]}");
    //keep the correct answers separated from the wrong.
    if (fiveCorrectAnswers.contains(_cardTextList0[x])) {
      rightQuote();
    } else {
      print("is different than ${fiveCorrectAnswers[_trial]}");
      falseQuote();
    }
    if (_trial < 5) {
      textArab = [cardValues[_trial].refQuote, cardValues[_trial].arabQuote];
      _cardTextList0 = [
        cardValues[_trial].translationQuoteID,
        cardValues[_trial].quoteTranslationFiller1,
        cardValues[_trial].quoteTranslationFiller2,
      ];
      print("trial should update the quote as we are below 5");
      print(cardValues[_trial].refQuote);
      print(_cardTextList0[1]);
      _trialMaxFive = _trial;
    }

    if (_trial == 5) {
      print("we reached 5 trials");
      scoreToPermanentScore();
    }
    notifyListeners();
  }

  void rightQuote() {
    _score++;
    _trial++;

    print("$_score");
    print("chose right");
    notifyListeners();
  }

  void falseQuote() {
    _trial++;

    print("$_score");
    print("chose wrong");
    notifyListeners();
  }

  void scoreToPermanentScore() {
    print("before addition _permanentScore is $_permanentScore");
    print("_score to be added is $_score");
    if (_permanentScore != null) {
      _permanentScore = _permanentScore + _score;
    } else {
      _permanentScore = _score;
    }
    print("_permanentScore is now $_permanentScore");
    notifyListeners();
    _updateSharedPreferences();
  }

  void stepperPoint() {
    _steppoint++;
    notifyListeners();
  }

  void incrementCount() {
    _intExp += 20;
    _point += 4;
    print(_point);
    _steppoint = _point % 11;
    print(_steppoint);
    // steppoint += 1 % 11;
    // if (steppoint > 11) {
    //   steppoint = 0;
    // }
    notifyListeners();
  }

  // TODO: double check - Chose the SharedPreferences prefs syntax instead of final pref =
  // for no obvious reasons

  ///Will return the value on start-up of the app from shared preferences
  /// uses the getInt with a key parameter to recover the integer
  // demo code without provider used by Denaz :https://www.youtube.com/watch?v=XNYkTdmH4DQ

  //TODO: why returning an int? Why not just use a global variable update?
  //Need to rewrite this block
  Future<int> _getScoreFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _permanentScore = prefs.getInt('permanentScore');
    if (_permanentScore == null) {
      print("previous permanent score null");
      return 0;
    }
    print("previous permanent score $_permanentScore");
    notifyListeners();
    return _permanentScore;
  }

  ///Updates the shared preferences with the value of permanent score
  ///through a setInt function with as parameters a key and a updated value
  Future _updateSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('permanentScore', _permanentScore);
    await prefs.setInt('permanentScore', _steppoint);
    // Could also be a number or other objects passed on as values.
  }

  int get intExp => _intExp;
  int get point => _point;
  int get steppoint => _steppoint;
  int get choice => _choice;
  int get score => _score;
  int get trial => _trial;
  int get trialMaxFive => _trialMaxFive;
  List<String> get cardTextList0 => _cardTextList0;
  int get permanentScore => _permanentScore;
}
