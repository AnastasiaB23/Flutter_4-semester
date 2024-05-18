import 'package:flutter/material.dart';
import 'package:practice6/main.dart';


class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dat = MyData.of(context).data;
    return Scaffold(
        body:
        Center(
            child:
          Text(
            dat,
            style: TextStyle(color: MyData.of(context).color, fontSize: 24.0),
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