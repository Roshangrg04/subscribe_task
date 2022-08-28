import 'package:flutter/material.dart';
import 'package:subscribe_task/screens/homepage/home_page.dart';
import 'package:subscribe_task/screens/loginpage/login.dart';
import 'package:subscribe_task/screens/loginpage/phoneverification.dart';
import 'package:subscribe_task/screens/loginpage/signup.dart';
import 'package:subscribe_task/screens/loginpage/welcome.dart';
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
import 'package:subscribe_task/screens/subscribepage/spotifySubscribed.dart';
import 'package:subscribe_task/screens/subscribepage/spotifysubscribe.dart';
import 'package:subscribe_task/screens/subscribepage/subscribe_page.dart';
import 'package:subscribe_task/screens/subscribepage/youtubeSubscribed.dart';
import 'package:subscribe_task/screens/subscribepage/youtubesubscribe.dart';
import 'package:subscribe_task/screens/victimpage/victim_page.dart';
import 'package:subscribe_task/utils/routes.dart';

void main() {
  runApp(MyApp());
}

final ValueNotifier selectedIndexGlobal = ValueNotifier(0);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Welcome(),
        MyRoutes.netflixSub: (context) => NetFlixSub(),
        MyRoutes.subspage: (context) => SubsPage(),
        MyRoutes.netflixSubscribed: (context) => NflixSubscribe(),
        MyRoutes.YtSub: (context) => YtSub(),
        MyRoutes.YtSubscribed: (context) => YtSubscribe(),
        MyRoutes.SpotifySub: (context) => SpotifySub(),
        MyRoutes.SpotifySubscribed: (context) => SpotifySubscribe(),
        MyRoutes.account: (context) => AccountPage(),
        MyRoutes.myBank: (context) => MyBankPage(),
        MyRoutes.myDevicesandCredentials: (context) =>
            MyDevicesAndCredentialsPage(),
        MyRoutes.settings: (context) => Settings(),
        MyRoutes.idCard: (context) => IdCard(),
        MyRoutes.signup: ((context) => Signup()),
        MyRoutes.phoneVerify: ((context) => PhoneVerify()),
        MyRoutes.welcome: (context) => Welcome(),
        MyRoutes.main: (context) => MainPage(),
        MyRoutes.login: (context) => Login()
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
  int _current_index = 0;
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
        child: ValueListenableBuilder(
            valueListenable: selectedIndexGlobal,
            builder: (context, value, child) {
              return Scaffold(
                body: pages[selectedIndexGlobal.value],
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  backgroundColor: Color.fromARGB(255, 41, 40, 40),
                  currentIndex: selectedIndexGlobal.value,
                  iconSize: 17,
                  selectedItemColor: Colors.grey,
                  unselectedItemColor: Colors.white,
                  selectedFontSize: 13,
                  onTap: (index) {
                    setState(() {
                      selectedIndexGlobal.value = index;
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
              );
            }));
  }
}
