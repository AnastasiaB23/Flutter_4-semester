import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'go_router.dart';
import 'screens/second_screen.dart';
import 'dart:async';



void main() async{


  pageLoading();
  await messageAsync();

  runApp(const MyApp());
  _deleteImageFromCache();

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

Future _deleteImageFromCache() async {

  await CachedNetworkImage.evictFromCache(URLs(1));
  await CachedNetworkImage.evictFromCache(URLs(2));
  await CachedNetworkImage.evictFromCache(URLs(3));
  await CachedNetworkImage.evictFromCache(URLs(4));
  await CachedNetworkImage.evictFromCache(URLs(5));
  print('Кэш очищен!');
}



