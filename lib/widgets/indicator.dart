// import 'package:scoped_model/scoped_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class MainIndicator extends Model {
//   final prefs = SharedPreferences.getInstance();
//   // final intExp = prefs.getInt('');
//   int _tabIndex = 0;
//   int _intExp = 0;
//   static int _selectedIndex = 0;
//   double _progressIndex = 0;
//   String _levelIndex = "Newbie";
//   String _targetIndex = "100";
//   final List<String> categories = ['Next', 'Wrong', 'Favorite', 'Future'];

//   String get levelIndex {
//     return _levelIndex;
//   }

//   String get targetIndex {
//     return _targetIndex;
//   }

//   int get tabIndex {
//     return _tabIndex;
//   }

//   int get selectedIndex {
//     return _selectedIndex;
//   }

//   int get intExp {
//     return _intExp;
//   }

//   double get progressIndex {
//     return _progressIndex;
//   }

//   void incrementCount() {
//     _progressIndex += 0.2;
//     _intExp += 20;

//     if (_progressIndex == 1) {
//       _progressIndex = 0;
//     }

//     notifyListeners();
//   }

//   void category() {
//     _selectedIndex = 0;
//   }

//   void level1() {
//     _levelIndex = "Normal";
//     _targetIndex = "200";
//     notifyListeners();
//   }

//   void level2() {
//     _levelIndex = "Advance";
//     _targetIndex = "300";
//     notifyListeners();
//   }

//   void level3() {
//     _levelIndex = "Expert";
//     _targetIndex = "500";
//     notifyListeners();
//   }

//   void tabBar0() {
//     _tabIndex = 0;
//     notifyListeners();
//   }

//   void tabBar1() {
//     _tabIndex = 1;
//     notifyListeners();
//   }

//   void tabBar2() {
//     _tabIndex = 2;
//     notifyListeners();
//   }

//   void tabBar3() {
//     _tabIndex = 3;
//     notifyListeners();
//   }
// }
