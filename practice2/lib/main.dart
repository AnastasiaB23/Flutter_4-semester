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
      home: ContentSwitcherScreen(),
    );
  }
}

class ContentSwitcherScreen extends StatefulWidget {
  @override
  _ContentSwitcherScreenState createState() => _ContentSwitcherScreenState();
}

class CheckboxWidget extends StatefulWidget{
  @override
  _CheckboxWidget createState() => _CheckboxWidget();
}

class ButtonWidget extends StatefulWidget{
  @override
  _ButtonWidget createState () => _ButtonWidget();
}

class _ContentSwitcherScreenState extends State<ContentSwitcherScreen> {
  int _currentIndex = 0;

  List<Widget> _contentWidgets = [
    TextWidget(),
    ImageWidget(),
    ButtonWidget(),
    ListWidget(),
    CheckboxWidget(),
  ];

  void _changeContent(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Мой путь'),
      ),
      body: Center(
        child: _contentWidgets[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changeContent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Text',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Image',
            backgroundColor: Colors.deepOrangeAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app),
            label: 'Button',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
            backgroundColor: Colors.pink,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_square),
            label: 'Checkbox',
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Путь в тысячу шагов начинается с первого шага!',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('images/ZlNH85AHizA.jpg'

      ),
    );
  }
}

class _ButtonWidget extends State<ButtonWidget> {
  int _countStepper = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
        '$_countStepper',
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        SizedBox(
          width: 20.0,
          height: 30.0,
        ),

        ElevatedButton(
          onPressed: () {
          setState(() {
            _countStepper++;
          });
        },
          child: Text('Шаг'),
      ),
      ],
    );

  }
}

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        index=index+1;
        return ListTile(
          title: Text('$index - я тысяча шагов'),
        );
      },
    );
  }
}

class _CheckboxWidget extends State<CheckboxWidget> {
  bool checkBValue = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('План выполнен!'),
      value: checkBValue,
      onChanged: (value) {
        setState(() {
          checkBValue = value!;
        });
      }//(bool? value) {},
    );

  }
}