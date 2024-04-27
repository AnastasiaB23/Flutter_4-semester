import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text(
        'Путь в тысячу шагов начинается с первого шага!',
        style: TextStyle(fontSize: 24.0),
      ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Назад'),
        )
    );
  }
}