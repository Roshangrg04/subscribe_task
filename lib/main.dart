import 'package:flutter/material.dart';
import 'package:subscribe_task/screens/homepage/home_page.dart';
import 'package:subscribe_task/screens/newspage/news_page.dart';
import 'package:subscribe_task/screens/profilepage/account_profile.dart';
import 'package:subscribe_task/screens/profilepage/id_card.dart';
import 'package:subscribe_task/screens/profilepage/my_bank.dart';
import 'package:subscribe_task/screens/profilepage/my_devices_and_credentials.dart';
import 'package:subscribe_task/screens/profilepage/profile_page.dart';
import 'package:subscribe_task/screens/profilepage/settings.dart';
import 'package:subscribe_task/screens/subscribepage/Subscribe.dart';
import 'package:subscribe_task/screens/subscribepage/netflix_subscribe.dart';
import 'package:subscribe_task/screens/subscribepage/nflix_subscribed.dart';
import 'package:subscribe_task/screens/subscribepage/subscribe_page.dart';
import 'package:subscribe_task/screens/victimpage/victim_page.dart';
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
        MyRoutes.account: (context) => AccountPage(),
        MyRoutes.myBank: (context) => MyBankPage(),
        MyRoutes.myDevicesandCredentials: (context) =>
            MyDevicesAndCredentialsPage(),
        MyRoutes.settings: (context) => Settings(),
        MyRoutes.idCard: (context) => IdCard(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _current_index = 4;
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
        items: const [
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
