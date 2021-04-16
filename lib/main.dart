import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'login/loginpage.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logic/global_state.dart';
import 'logic/item_gen.dart';
import 'screens/initialize_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => AppState())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'HolyWordsMuslim',
          home: LoginPage(),
          // also using constants.dart for styling
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.lightBlue[800],
            textTheme: TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
              bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
        ));
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'HolyWordsMuslim',
//       home: LoginPage(),
//       // also using constants.dart for styling
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primaryColor: Colors.lightBlue[800],
//         textTheme: TextTheme(
//           headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//           headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//           bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//         ),
//       ),
//     );
//   }
// }
