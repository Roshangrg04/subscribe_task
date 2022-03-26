import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "asset/images/DarkThemeBackground1-013.png",
                      ),
                      fit: BoxFit.cover)),
              child: Text(
                "Homepage",
                style: TextStyle(fontSize: 50, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ))
      ]),
    ));
  }
}
