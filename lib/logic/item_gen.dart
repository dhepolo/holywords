import 'dart:math';

import 'data/item.dart';

import 'global_state.dart';
import 'misc_functions_gen.dart';

//https://stackoverflow.com/questions/62477589/flutter-variables-reset-to-default-value-when-navigate-to-another-screen

//randomizer
class Randomizer {
  List endResultofParser = new List<String>();
  // cardsForGameLoopParsed will contain - 5 item models consisting of ref + arab + translation + 2 fillers
  // out of cardsForGameLoopParsed we have everything to construct 5x 3 cards to select - a full game loop is
  // guessing 5 times then to end game and back to menu
  List cardsForGameLoopParsed = new List<ItemModel>();
  List quotesWithoutFillersToDisplay = new List<ItemModel>();

// the function below limits the possibilities of the random gen according to the choices of the user at menu screen

  void randomizer() {
    //new variables
    var rng = new Random();
    //looping through the animals - selecting 5
    List fillersForGameLoop = new List<String>();
    limitQuotesAndFillersByMenuChoice();

    void generateRandomQuotes() {
      //Purpose of this function is
      //1- random number generator
      //2- duplicates removal
      //3- return List of 5 elements containing 3 strings each - ref of quote, arab and translation

      print("called generateRandomQuotes");

      for (int i = 0; i < 5; i++) {
        //1- Generate random number for a quote and translation
        int upperBoundQandT = quoteChoicesAfterMenu.length;
        print(quoteChoicesAfterMenu.length);
        // because the number of quotes in the game changes
        int rngQandT = rng.nextInt(upperBoundQandT);

        print(quoteChoicesAfterMenu[rngQandT]);
        print("should go down by one");
        print(quoteChoicesAfterMenu.length);
        // globalstate has a global variable used to double check if an answer is correct. Currently simply if contained among the 5 correct
        // translations. But can be improved later.

        fiveCorrectAnswers.add(quoteChoicesAfterMenu[rngQandT][2]);

        var _x = new ItemModel(
            quoteChoicesAfterMenu[rngQandT][0],
            quoteChoicesAfterMenu[rngQandT][1],
            quoteChoicesAfterMenu[rngQandT][2]);
        //At each iteration of the loop an randomly generated element is added to the new list
        //All the properties of the chosen quote incl reference, arab writing and translation are passed
        // ItemModel also uses two fillers that we do not know at this stage
        quotesWithoutFillersToDisplay.add(_x);
        //... then removed from the list to take element randomly from
        quoteChoicesAfterMenu.remove(quoteChoicesAfterMenu[rngQandT]);

        print("reference aka refQuote of quote selected by Randomizer");
        print(quotesWithoutFillersToDisplay[i].refQuote);

        //2- LOOP for no duplicates
        // a smaller list of fillersAvailable making sure there are no repeats
        // need a loop as remove() does remove one element at the time

        //List quotesAvailable = List.from([quoteChoicesAfterMenu[rngQandT][2]]);
        // should be List quotesAvailable = List.from([quoteChoicesAfterMenu[rngQandT][0]]); but we dont need this food prop
        // ref should be enough?

        //TODO: reread the difference between quotesAvailable and quotes for gameloop
        // TODO: document what these variables do

      }

      //quotesWithoutFillersToDisplay.shuffle();
      //TODO: shuffle?
      print("validating the end of randomquotes - should see 5 quotes");
      print(quotesWithoutFillersToDisplay.length);
      print(quotesWithoutFillersToDisplay[0].refQuote);
      print(quotesWithoutFillersToDisplay[1].refQuote);
      print(quotesWithoutFillersToDisplay[2].refQuote);
      print(quotesWithoutFillersToDisplay[3].refQuote);
      print(quotesWithoutFillersToDisplay[4].refQuote);
    }

    void generateRandomFillers() {
      // Purpose of this function is the same as generateRandomQuotes
      // but for 10 fillers instead of 5 cards. Also ItemModel comes later
      //1- random number generator
      //2- duplicates removal
      //3- return List of 10 strings - no custom objects yet

      print("called generateRandomFillers");
      //TODO: does it fit here or higher?

      for (int i = 0; i < 10; i++) {
        //1- Generate random number for a filler
        int upperBoundFillers = fillerChoicesAfterMenu.length;
        print(fillerChoicesAfterMenu.length);
        // because the number of quotes in the game changes
        int rngFillers = rng.nextInt(upperBoundFillers);

        print(fillerChoicesAfterMenu[rngFillers]);
        print("should go down by one");
        print(fillerChoicesAfterMenu.length);

        fillersForGameLoop.add(fillerChoicesAfterMenu[rngFillers]);
        fillerChoicesAfterMenu.remove(fillerChoicesAfterMenu[rngFillers]);
      }

      print("at this stage we should have 10 elements for the fillers");
      print(fillersForGameLoop.length);
    }

    void parseFillersIntoItemModel() {
      print("parseFillersIntoItemModel");
      //Create a list of 5 item models using the strings in the two random generated lists
      // parsing them into the ItemModel object as properties
      // return the list that would be injected in the UI
      //For drawing the widget it makes more sense to have one column of food as a ItemModel object
      //dragged into a column of animals ItemModel. So foodToDisplay needs to be transformed into a ItemModel
      endResultofParser = quotesWithoutFillersToDisplay;

      for (int i = 0; i < 5; i++) {
        endResultofParser[i].quoteTranslationFiller1 = fillersForGameLoop[i];
        endResultofParser[i].quoteTranslationFiller2 =
            fillersForGameLoop[i + 5];
      }

      //TODO: change this line below as too many variables doing the same thing and also need to use State Management?
    }

    generateRandomQuotes();

    generateRandomFillers();

    parseFillersIntoItemModel();
    //TODO: refactor to have 2 fillers instead of one
    //TODO: move from void to a proper return type

    print(
        "should see below the first arab writing shuffled to display that been put into ItemModel");
    print(endResultofParser[0].arabQuote);
    print("its refQuote is");
    print(endResultofParser[0].refQuote);
    print("the second filler of the last Quote");
    print(endResultofParser[4].quoteTranslationFiller2);
    print("total number of items should be 5 and is...");
    print(endResultofParser.length);
    cardValues = endResultofParser;
  } // end of randomizer void
} // end of Randomizer class
