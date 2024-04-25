import 'package:flutter/material.dart';
import 'go_router.dart';

import 'dart:async';


void main() async{


  pageLoading();
  await messageAsync();

  runApp(const MyApp());

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
    return MaterialApp.router(
      title: temp,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routerConfig: router,
    );
  }
}







