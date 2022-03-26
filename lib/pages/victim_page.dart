import 'package:flutter/material.dart';

class VictimPage extends StatefulWidget {
  const VictimPage({Key? key}) : super(key: key);

  @override
  State<VictimPage> createState() => _VictimPageState();
}

class _VictimPageState extends State<VictimPage> {
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
              "Victim Page",
              style: TextStyle(fontSize: 50, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ))
    ])));
  }
}
