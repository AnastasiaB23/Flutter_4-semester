

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
        title: Text('Мой путь',
        style: TextStyle(
          fontSize: 40,
          fontStyle: FontStyle.italic,
        ),
        ),
      ),
      body: Center(
        child:Column(

          children: <Widget>[
          SizedBox(
          height: 75,
          width: 150,
          ),
          SizedBox(
          height: 75,
          width: 150,
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                surfaceTintColor: Colors.pinkAccent,
                side: BorderSide(width: 3, color: Colors.blue),
                // elevation: 2,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TextWidget()),);
              },
              child: Text('В',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.9),
              ),),
            ),
          ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 75,
                width: 150,
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                surfaceTintColor: Colors.pinkAccent,
                side: BorderSide(width: 3, color: Colors.blue),
                // elevation: 2,
              ),
              onPressed: () {
                return context.goNamed("image");
              },
              child: Text('ы',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.9),
                ),),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 75,
                width: 150,
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                surfaceTintColor: Colors.pinkAccent,
                side: BorderSide(width: 3, color: Colors.blue),
                // elevation: 2,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListWidget()),);
              },
              child: Text('б',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.9),
                ),),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 100,
                width: 175,
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                surfaceTintColor: Colors.pinkAccent,
                side: BorderSide(width: 3, color: Colors.blue),
                // elevation: 2,
              ),
              onPressed: () {
                return context.goNamed("checkbox");
              },
              child: Text('М о й',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.9),
                ),),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 75,
                width: 150,
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                surfaceTintColor: Colors.pinkAccent,
                side: BorderSide(width: 3, color: Colors.blue),
                // elevation: 2,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ButtonWidget()),);
              },
              child: Text('р',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.9),
                ),),
            ),
            ),

      ],

          ),
        ),
      );
  }

}
