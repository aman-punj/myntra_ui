// import 'package:flutter/material.dart';
// import 'dart:math';
//
// class SearchBar extends StatefulWidget {
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }
//
// class _SearchBarState extends State<SearchBar> {
//   final List<String> hintTexts = [
//     'Search for...',
//     'Type here...',
//     'Find something...',
//   ];
//
//   Random random = Random();
//   int currentHintIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.grey),
//         ),
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(Icons.search),
//             ),
//             Expanded(
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: hintTexts[currentHintIndex],
//                 ),
//               ),
//             ),
//             IconButton(
//               icon: Icon(Icons.camera_alt),
//               onPressed: () {
//                 // Perform action on camera icon press
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.mic),
//               onPressed: () {
//                 // Perform action on mic icon press
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     // Randomly change hint text every 3 seconds
//     changeHintText();
//   }
//
//   void changeHintText() {
//     Future.delayed(Duration(seconds: 3), () {
//       setState(() {
//         currentHintIndex = random.nextInt(hintTexts.length);
//       });
//       changeHintText();
//     });
//   }
// }

