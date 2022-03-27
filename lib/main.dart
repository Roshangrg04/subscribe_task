import 'package:flutter/material.dart';
import 'package:subscribe_task/screens/subscribepage/Subscribe.dart';
import 'package:subscribe_task/screens/main_page.dart';
import 'package:subscribe_task/screens/subscribepage/netflix_subscribe.dart';
import 'package:subscribe_task/screens/subscribepage/nflix_subscribed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => MainPage(),
        "/netflixsubs": (context) => NetFlixSub(),
        "/subspage": (context) => SubsPage(),
        "/netflixSubscribed": (context) => NflixSubscribe()
      },
    );
  }
}
