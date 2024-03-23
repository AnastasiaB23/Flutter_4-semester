import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Путь',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _currentIndex = 0;
  List<String> items1 = ['У меня всё получится!'];
  List<String> items2 = ['У меня всё получaется!'];
  List<String> items3 = ['У меня всё получилось!'];


  void _changeContent(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _addFunc(){
    setState(() {
      if (_currentIndex == 0){
        items1.add(myController.text);
      }
      else if (_currentIndex == 1){
        items2.add(myController.text);
      }
      else{
        items3.add(myController.text);
      }
    });

  }

  void _removeFunc(int ind){
    setState(() {
      if (_currentIndex == 0) {
        items1.removeAt(ind);
      } else if (_currentIndex == 1) {
        items2.removeAt(ind);
      } else {
        items3.removeAt(ind);
      }
    });
  }

  TextEditingController myController = TextEditingController();

  Widget _contentWidgets(){
    if (_currentIndex == 0) {
      return _column();
    } else if (_currentIndex == 1) {
      return _listView();
    } else {
      return _separatedListView();
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Мой путь'),
      ),
      body: _contentWidgets(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changeContent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_column),
            label: 'Column',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_weight),
            label: 'LIST',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Добавить'),
                  content: TextField(controller: myController),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        _addFunc();
                      },
                      child: Text('Ок'),
                    ),
                  ],
                );
              }
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

    Widget _column () {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: items1
          .map((item) => ListTile(
        title: TextFormField(
          controller: TextEditingController(text: (item)),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => _removeFunc(items1.indexOf(item)),
        ),
      ))
          .toList(),
    );
  }

  Widget _listView (){
    return ListView.builder(
      itemCount: items2.length,
      itemBuilder: (context, index) => ListTile(
        title: TextFormField(
          controller: TextEditingController(text: (items2[index])),
        ),
          onTap: () => _removeFunc(index),
        ),

    );
  }

  Widget _separatedListView (){
    return ListView.separated(
      itemCount: items3.length,
      separatorBuilder: (context, index) => Divider(thickness: 10, color: Colors.cyanAccent),
      itemBuilder: (context, index) => ListTile(
        title: TextFormField
          (
          controller: TextEditingController(text: (items3[index])),
        ),
          onTap: () => _removeFunc(index),
        ),

    );
  }

}



