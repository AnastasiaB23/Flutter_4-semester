import 'package:flutter/material.dart';



class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: ListView.builder(
      itemCount: 21,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$index - я тысяча шагов'),
        );
      },
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