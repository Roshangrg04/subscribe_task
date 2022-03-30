import 'package:flutter/material.dart';
import 'package:subscribe_task/screens/homepage/home_page.dart';
import 'package:subscribe_task/screens/newspage/news_page.dart';
import 'package:subscribe_task/screens/profilepage/profile_page.dart';
import 'package:subscribe_task/screens/subscribepage/subscribe_page.dart';
import 'package:subscribe_task/screens/victimpage/victim_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _current_index = 1;
  List pages = [
    Home(),
    NewsPage(),
    SubscribePage(),
    VictimPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: pages[_current_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: Color.fromARGB(255, 41, 40, 40),
        currentIndex: _current_index,
        iconSize: 17,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,
        selectedFontSize: 13,
        onTap: (index) {
          setState(() {
            _current_index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("asset/images/Vectorhome.png"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/images/Vectornews.png"),
              ),
              label: "News"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/images/Vectorsubscribe.png"),
                size: 15,
              ),
              label: "Subscribe"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/images/heart1 1.png"),
              ),
              label: "Victim"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/images/Vectorprofile.png"),
              ),
              label: "Profile"),
        ],
      ),
    ));
  }
}
