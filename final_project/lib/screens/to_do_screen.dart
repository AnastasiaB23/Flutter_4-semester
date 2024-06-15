import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice6/todo_item.dart';
import 'todo_preview_screen.dart';
import '../model/todo.dart';
import '/screens/todo_preview_screen.dart';


class ToDoScreen extends StatefulWidget{
  int? id;
  ToDoScreen({super.key, required id});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen>{


  final todosList = ToDo.myToDoList1();
  // final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  void initState(){
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),

            child: Column(
            children: [
              SizedBox(width: 100, height: 30),
              searchBox(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Text(
                        'All ToDos',
                          // CHANGE to a specific category!!!!!
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (ToDo todoo in _foundToDo.reversed)
                      ToDoItem(
                        todo: todoo,
                        onToDoChanged: _handleToDoChange,
                        onDeleteItem: _deleteToDoItem,),
                  ],
                ),
              ),
            ],
          ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(child: Container(margin: EdgeInsets.only(
                bottom: 20,
                right: 20,
                left: 20,
              ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [BoxShadow(color: Colors.grey,offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ),],
                  borderRadius: BorderRadius.circular(10),

                ),
                child: TextField(
                  controller: _todoController,
                  decoration: InputDecoration(
                    hintText: 'Добавить...',
                    border: InputBorder.none
                  ),

                ),
              ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, right: 20),
                child: ElevatedButton(
                  child: Text('+', style: TextStyle(fontSize: 40,),),
                  onPressed: () {
                    _addToDoItem(_todoController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.indigo,
                    minimumSize: Size(60, 60),
                    elevation: 10,
                  ),
                ),
              ),
            ],),
          )
      ],
      ),
    );
  }



  void _handleToDoChange(ToDo todo){
    setState((){
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id){
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String toDo){
    setState(() {
      todosList.add(ToDo(id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: toDo));
    });
    _todoController.clear();
  }


  void _runFilter(String enteredKeyword){
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty){
      results = todosList;
    }
    else{
      results = todosList
          .where((item) => item.todoText!
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundToDo = results;
    });
  }


  Widget searchBox(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black54,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25
          ),
          border: InputBorder.none,
          hintText: 'Поиск',
          hintStyle: TextStyle(color: Colors.blueGrey),
        ),
      ),
    );
  }
}