// import 'package:flutter/material.dart';
// import 'package:practice6/entryscreen.dart';
//
//
// class ButtonWidget extends StatefulWidget{
//   const ButtonWidget({Key? key}) : super(key: key);
//   @override
//   _ButtonWidget createState () => _ButtonWidget();
// }
//
// class _ButtonWidget extends State<ButtonWidget> {
//   int _countStepper = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           '$_countStepper',
//           style: Theme.of(context).textTheme.headlineMedium,
//         ),
//
//         SizedBox(
//           width: 20.0,
//           height: 30.0,
//         ),
//
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _countStepper++;
//             });
//           },
//           child: Text('Шаг'),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         ElevatedButton(
//           onPressed: () {
//             Navigator.pushReplacement<void, void>(
//                 context,
//                 MaterialPageRoute<void>(
//                   builder: (BuildContext context) => const EntryScreen(),
//                 )
//             );
//           },
//           child: Text('Назад навсегда'),
//         ),
//       ],
//
//     );
//
//   }
// }