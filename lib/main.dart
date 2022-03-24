import 'package:flutter/material.dart';
import 'package:subscribe_task/pages/Subscribe.dart';
import 'package:subscribe_task/pages/home_page.dart';
import 'package:subscribe_task/pages/netflix_subscribe.dart';
import 'package:subscribe_task/pages/nflix_subscribed.dart';

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
        "/": (context) => HomePage(),
        "/netflixsubs": (context) => NetFlixSub(),
        "/subspage": (context) => SubsPage(),
        "/netflixSubscribed": (context) => NflixSubscribe()
      },
    );
  }
}
