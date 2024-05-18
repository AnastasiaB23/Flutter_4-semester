

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'main.dart';
import 'screens/fifth_screen.dart';
import 'screens/first_screen.dart';

import 'screens/third_screen.dart';

SizedBox _sizedBoxBetween({double height = 10}){
  return SizedBox(
    height: height,
    );
}

ButtonStyle _buttonStyle(){
  return ElevatedButton.styleFrom(
    surfaceTintColor: Colors.pinkAccent,
    side: BorderSide(width: 3, color: Colors.blue),
  );
}

TextStyle _textStyle(){
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black.withOpacity(0.9),
  );
}

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
          _sizedBoxBetween(height: 100),
          SizedBox(
          height: 75,
          width: 150,
            child:ElevatedButton(
              style: _buttonStyle(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TextWidget()),);
              },
              child: Text('В',
                style: _textStyle()
              ),
            ),
          ),
            _sizedBoxBetween(),
            SizedBox(
                height: 75,
                width: 150,
            child:ElevatedButton(
              style: _buttonStyle(),
              onPressed: () {
                return context.goNamed("image");
              },
              child: Text('ы',
                style: _textStyle()
              ),
            ),
            ),
            _sizedBoxBetween(),
            SizedBox(
                height: 75,
                width: 150,
            child:ElevatedButton(
              style:_buttonStyle(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListWidget()),);
              },
              child: Text('б',
                style: _textStyle()
              ),
            ),
            ),
            _sizedBoxBetween(),
            SizedBox(
                height: 100,
                width: 175,
            child:ElevatedButton(
              style: _buttonStyle(),
              onPressed: () {
                return context.goNamed("checkbox");
              },
              child: Text('М о й',
                style: _textStyle()
              ),
            ),
            ),
            _sizedBoxBetween(),
            SizedBox(
                height: 75,
                width: 150,
            child:ElevatedButton(
              style: _buttonStyle(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CounterPage()),);
              },
              child: Text('р',
                style: _textStyle()
              ),
            ),
            ),
      ],
          ),
        ),
      );
  }

}
