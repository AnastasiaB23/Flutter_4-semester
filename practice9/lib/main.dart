import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:practice6/screens/first_screen.dart';
import 'go_router.dart';
import 'screens/second_screen.dart';
import 'dart:async';
import 'package:get_it/get_it.dart';



void main() async{

  initDream();
  pageLoading();
  await messageAsync();

  runApp(const MyApp());


}

class MyData extends InheritedWidget {

  const MyData({super.key, required this.data, required this.color, required super.child});
  final String data;
  final Color color;

  static MyData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyData>()!;
  }

  @override
  bool updateShouldNotify(covariant oldWidget) {
    return true;

  }
}

class Dreams {
  String? goal;
  String? deadline;
  Dreams({this.goal, this.deadline});
}

GetIt myDream = GetIt.instance;

initDream() {
  myDream.registerFactoryParam<Dreams, String, String>((param1, param2) =>
      Dreams(goal: param1, deadline: param2));
}


void pageLoading(){
    print ("Итак...");
    Future<String> messageFromFuture = futureMessage0();
    messageFromFuture.then((message){
       print(message);
    });

    print ("На старт... ");

}

Future<String> futureMessage0() {
  return Future.delayed(Duration(seconds: 2), () => "Внимание...");
}

Future<String> futureMessage1() {
  return Future.delayed(Duration(seconds: 4), () => "ПОГНАЛИ!");
}

String temp = '';

Future <String> messageAsync() async {
  try {
    String asyncMessage = await futureMessage1();
    temp = asyncMessage;
    return temp;
  } catch (error) {
    return('Ошибка при получении данных: $error');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyData(
      data: 'Путь в тысячу шагов начинается с первого шага!',
      color: Colors.green,
    child: MaterialApp.router(
      title: temp,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routerConfig: router,
    ),
    );
  }
}

Future _deleteImageFromCache() async {

  await CachedNetworkImage.evictFromCache(URLs(1));
  await CachedNetworkImage.evictFromCache(URLs(2));
  await CachedNetworkImage.evictFromCache(URLs(3));
  await CachedNetworkImage.evictFromCache(URLs(4));
  await CachedNetworkImage.evictFromCache(URLs(5));
  print('Кэш очищен!');
}



