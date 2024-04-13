

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/fifth_screen.dart';
import 'screens/first_screen.dart';

import 'screens/third_screen.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мой путь'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          children: <Widget>[

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TextWidget()),);
              },
              child: Text('В'),
            ),
            ElevatedButton(
              onPressed: () {
                return context.goNamed("image");
              },
              child: Text('ы'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListWidget()),);
              },
              child: Text('б'),
            ),
            ElevatedButton(
              onPressed: () {
                return context.goNamed("checkbox");
              },
              child: Text('мой'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ButtonWidget()),);
              },
              child: Text('р'),
            ),
          ],

        ),
      ),
    );
  }

}
