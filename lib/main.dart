import 'package:flutter/material.dart';
import 'package:subscribe_task/screens/newspage/newspage1.dart';
import 'package:subscribe_task/screens/subscribepage/Subscribe.dart';
import 'package:subscribe_task/screens/main_page.dart';
import 'package:subscribe_task/screens/subscribepage/netflix_subscribe.dart';
import 'package:subscribe_task/screens/subscribepage/nflix_subscribed.dart';
import 'package:subscribe_task/utils/routes.dart';

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
        MyRoutes.netflixSub: (context) => NetFlixSub(),
        MyRoutes.subspage: (context) => SubsPage(),
        MyRoutes.netflixSubscribed: (context) => NflixSubscribe(),
        //MyRoutes.newsDesc: (context) => NewsDesc()
      },
    );
  }
}
