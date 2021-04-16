import 'package:flutter/material.dart';

import '../logic/variables.dart';
import '../widgets/tabbar.dart';
import '../widgets/category.dart';
import '../widgets/cards.dart';
import '../widgets/profilebar.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent[100],
        child: Column(
          children: <Widget>[
            ProfileBarPage(),
            CategoryPage(),
            // CategoriesScroller(),
            if (selectedIndex == 0) CardsPage(),
            // if (selectedIndex == 1) WrongPage(),
            // if (selectedIndex == 2) CardsMonthPage(),
            // if (selectedIndex == 3) FuturePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBarPage(),
      ),
    );
  }
}
