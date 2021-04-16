import 'package:flutter/material.dart';
import '../logic/variables.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  // static int selectedIndex = MainIndicator().selectedIndex;
  // final List<String> categories = ['Next', 'Wrong', 'Favorite', 'Future'];
  // final MainIndicator model = MainIndicator();
  // final Profile profile = Profile();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[900],
      height: 50.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontFamily: 'Ptsans',
                    color: index == selectedIndex
                        ? Colors.amber[200]
                        : Colors.white60,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
