// the opposite of constants.dart used for styling

import 'package:flutter/material.dart';
import 'package:holywordsmuslim/logic/global_state.dart';

//TODO: double check all the local vs global
//TODO: inject statemanagement before it gets too complex

//TODO: Denaz - i think we keep name variable.dart, because this code not using provider

bool hardGame = false;
bool scienceGame = false;
bool gameOver = false;
bool gameLose = false;
AssetImage backgroundImage;

int score = 0;
int steppoint = 0;
int point = 0;

List cardValues = new List();
List quoteChoicesAfterMenu = new List();
List fillerChoicesAfterMenu = new List();
List<String> cardTextList0 = [];
List<String> cardTextList1 = [];
List<String> cardTextList2 = [];
List<String> cardTextList3 = [];
List<String> cardTextList4 = [];

int tabIndex = 0;
int intExp = 0;
int selectedIndex = 0;
double progressIndex = 0;
String levelIndex = "Newbie";
String targetIndex = "100";
List<String> categories = ['Next', 'Wrong', 'Favorite', 'Future'];

void incrementCount() {
  // progressIndex += 0.2;
  intExp += 20;
  point += 3;
  print(point);
  steppoint = point % 11;
  print(steppoint);
  // steppoint += 1 % 11;
  // if (steppoint > 11) {
  //   steppoint = 0;
  // }
}

void category() {
  selectedIndex = 0;
}

void level1() {
  levelIndex = "Normal";
  targetIndex = "200";
}

void level2() {
  levelIndex = "Advance";
  targetIndex = "300";
}

void level3() {
  levelIndex = "Expert";
  targetIndex = "500";
}

void listBar0() {
  selectedIndex = 0;
}

void listBar1() {
  selectedIndex = 1;
}

void listBar2() {
  selectedIndex = 2;
}

void listBar3() {
  selectedIndex = 3;
}

void tabBar0() {
  tabIndex = 0;
}

void tabBar1() {
  tabIndex = 1;
}

void tabBar2() {
  tabIndex = 2;
}

void tabBar3() {
  tabIndex = 3;
}
