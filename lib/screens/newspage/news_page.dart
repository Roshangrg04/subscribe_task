import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
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
              "NewsPage",
              style: TextStyle(fontSize: 50, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ))
    ]));
  }
}
