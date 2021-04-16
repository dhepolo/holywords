import 'package:flutter/material.dart';

import 'variables.dart';

class ProviderQuote extends ChangeNotifier {
  int _choice = 0;

  void carousel(int indexCarousel) {
    _choice = indexCarousel;
    print("_choice is value $_choice");
    print("indexCarousel is value $indexCarousel");
    notifyListeners();
  }

  void checkQuote0(x) {
    print("Your choice is $x");
    print("The choice being validated ${cardTextList0[x]}");
    if (cardTextList0[x] == cardValues[0].translationQuoteID) {
      rightQuote();
    } else {
      falseQuote();
    }
  }

  void checkQuote1(x) {
    print("Your choice is $x");
    print("The choice being validated ${cardTextList1[x]}");
    if (cardTextList1[x] == cardValues[1].translationQuoteID) {
      rightQuote();
    } else {
      falseQuote();
    }
  }

  void checkQuote2(x) {
    print("Your choice is $x");
    print("The choice being validated ${cardTextList2[x]}");
    if (cardTextList2[x] == cardValues[2].translationQuoteID) {
      rightQuote();
    } else {
      falseQuote();
    }
  }

  void checkQuote3(x) {
    print("Your choice is $x");
    print("The choice being validated ${cardTextList3[x]}");
    if (cardTextList3[x] == cardValues[3].translationQuoteID) {
      rightQuote();
    } else {
      falseQuote();
    }
  }

  void checkQuote4(x) {
    print("Your choice is $x");
    print("The choice being validated ${cardTextList4[x]}");
    if (cardTextList4[_choice] == cardValues[4].translationQuoteID) {
      rightQuote();
    } else {
      falseQuote();
    }
  }

  void rightQuote() {
    score += 1;
    print("$score");
    print("chose right");
    notifyListeners();
  }

  void falseQuote() {
    print("$score");
    print("chose wrong");
    notifyListeners();
  }

  int get choice => _choice;
}
