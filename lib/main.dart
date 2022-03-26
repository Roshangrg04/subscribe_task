import 'package:flutter/material.dart';
import 'package:subscribe_task/pages/Subscribe.dart';
import 'package:subscribe_task/pages/main_page.dart';
import 'package:subscribe_task/pages/subscribe_page.dart';
import 'package:subscribe_task/pages/netflix_subscribe.dart';
import 'package:subscribe_task/pages/nflix_subscribed.dart';
import 'package:subscribe_task/pages/home_page.dart';

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
