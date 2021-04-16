// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// // import 'package:holywordsmuslim/components/indicator.dart';
// import 'package:holywordsmuslim/models/profiles_model.dart';
// import 'package:holywordsmuslim/view/constants.dart';
// import 'package:holywordsmuslim/view/profilpage.dart';

// class WordsPage extends StatefulWidget {
//   @override
//   _WordsPageState createState() => _WordsPageState();
// }

// class Todo {
//   String todoText;
//   bool todoToggle;
//   Todo(this.todoText, this.todoToggle);
// }

// class _StrikeThrough extends StatelessWidget {
//   bool todoToggle;
//   String todoText;
//   _StrikeThrough({this.todoToggle, this.todoText}) : super();

//   Widget _strikewidget() {
//     if (todoToggle == false) {
//       return Text(
//         todoText,
//         style: kPtsansTextStyle,
//       );
//     } else {
//       return Text(
//         todoText,
//         style: TextStyle(
//             fontSize: 14.0,
//             decoration: TextDecoration.lineThrough,
//             color: Colors.black38,
//             fontStyle: FontStyle.italic),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _strikewidget();
//   }
// }

// class _WordsPageState extends State<WordsPage> {
//   static List<String> words = [
//     "Ayat 1 - In the name of Allah, the Beneficent, the Merciful.",
//     "Ayat 2 - All praise is due to Allah, the Lord of the Worlds.",
//     "Ayat 3 - The Beneficent, the Merciful.",
//     "Ayat 4 - Master of the Day of Judgment",
//     "Ayat 5 - Thee do we serve and Thee do we beseech for help.",
//     "Ayat 6 - Keep us on the right path.",
//     "Ayat 7 - The path of those upon whom Thou hast bestowed favors. Not (the path) of those upon whom Thy wrath is brought down, nor of those who go astray.",
//   ];

//   // final MainIndicator model = MainIndicator();
//   final Profile profile = Profile();

//   final List<Todo> todos = words.map<Todo>((String item) {
//     return Todo(item, false);
//   }).toList();

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Surat Al-Fatiha"),
//       ),
//       body: ReorderableListView(
//         children: <Widget>[
//           for (var todo in todos)
//             CheckboxListTile(
//               value: todo.todoToggle,
//               onChanged: (bool) {
//                 setState(() {
//                   if (!bool) {
//                     todo.todoToggle = false;
//                   } else {
//                     todo.todoToggle = true;
//                   }
//                 });
//               },
//               key: Key(todo.todoText),
//               title: _StrikeThrough(
//                   todoText: todo.todoText, todoToggle: todo.todoToggle),
//               // title: Text(todo.todoText),
//             ),
//         ],
//         onReorder: (oldIndex, newIndex) {
//           setState(() {
//             if (oldIndex < newIndex) {
//               newIndex -= 1;
//             }
//             var getReplacedWidget = todos.removeAt(oldIndex);
//             todos.insert(newIndex, getReplacedWidget);
//           });
//         },
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(20), topLeft: Radius.circular(20)),
//           border: Border.all(
//             width: 3.0,
//           ),
//         ),
//         height: 50.0,
//         // color: Colors.transparent,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             // if (todo.todoToggle == false)
//             Text(
//               "Not Done Yet",
//               style: kPtsansTextStyle,
//             ),
//             IconButton(
//               icon: Icon(Icons.stop),
//               iconSize: 30.0,
//               color: Colors.black,
//               onPressed: () {
//                 setState(() {
//                   profile.incrementCount();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ProfilPage()),
//                   );
//                 });
//               },
//             ),
//             // if (todo.todoToggle == true)p
//             //   Text(
//             //     "Done",
//             //     style: kPtsansTextStyle,
//             //   ),
//             // IconButton(
//             //   icon: Icon(Icons.check),
//             //   iconSize: 30.0,
//             //   color: Colors.black,
//             //   onPressed: () {
//             //     setState(() {
//             //       model.incrementCount();
//             //       Navigator.push(
//             //         context,
//             //         MaterialPageRoute(builder: (context) => ProfilPage()),
//             //       );
//             //     });
//             //   },
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
