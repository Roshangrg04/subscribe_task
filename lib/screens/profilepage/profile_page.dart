import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              "Profile page",
              style: TextStyle(fontSize: 50, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ))
    ]));
  }
}
