

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice6/screens/todo_preview_screen.dart';

import 'main.dart';
import 'screens/to_do_screen.dart';
import 'screens/first_screen.dart';

import 'screens/third_screen.dart';

SizedBox _sizedBoxBetween({double height = 10}){
  return SizedBox(
    height: height,
    );
}



class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();


}

ButtonStyle _buttonStyle(){
  return TextButton.styleFrom(
    surfaceTintColor: Colors.pinkAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
  );
}

TextStyle _textStyle(){
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black.withOpacity(0.9),
  );
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Мой путь',
      //   style: TextStyle(
      //     fontSize: 40,
      //     fontStyle: FontStyle.italic,
      //   ),
      //   ),
      // ),
      body: Center(
        child:ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Container(
              color: Colors.lightBlue.shade100,
              width: 2000,
              height: 170,
              child:
              TextButton(
                  style: _buttonStyle(),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyGoals()),); // CHANGE LATER!
                  },
                  child: Text('Мои цели', style: _textStyle()
                  )
              )
          ),
          Container(
            color: Colors.lightBlue.shade200,
            width: 2000,
            height: 170,
            child:
            TextButton(
                style: _buttonStyle(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyGoals()),); // CHANGE LATER!
                },
                child: Text('Мои цели', style: _textStyle()
                )
            ),
          ),
          Container(
            color: Colors.lightBlue.shade300,
            width: 2000,
            height: 170,
            child:
            TextButton(
                style: _buttonStyle(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyGoals()),); // CHANGE LATER!
                },
                child: Text('Мои цели', style: _textStyle()
                )
            ),
          ),
          Container(
            color: Colors.lightBlue.shade400,
            width: 2000,
            height: 170,
            child:
            TextButton(
                style: _buttonStyle(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ToDoCategory(),)); // CHANGE LATER!
                },
                child: Text('Мои to-do', style: _textStyle()
                )
            ),
          ),
          Container(
            color: Colors.lightBlue.shade500,
            width: 2000,
            height: 170,
            child:
            TextButton(
                style: _buttonStyle(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyGoals()),); // CHANGE LATER!
                },
                child: Text('Мои цели', style: _textStyle()
                )
            ),
          ),
      ],
          ),
        ),
      );
  }

}
