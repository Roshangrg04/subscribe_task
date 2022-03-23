import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NflixSubscribe extends StatefulWidget {
  const NflixSubscribe({Key? key}) : super(key: key);

  @override
  State<NflixSubscribe> createState() => _NflixSubscribeState();
}

class _NflixSubscribeState extends State<NflixSubscribe> {
  @override
  int _current = 0;
  List imgList = [
    'asset/images/image4.png',
    'asset/images/image8.png',
    'asset/images/image7.png'
  ];

  List money = ['20.00', '48.00', '17.00'];
  List plan = ['Netlfix Standard', 'Youtube Premium', 'Spotify'];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
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
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 87, bottom: 54),
                        child: Image.asset(
                          "asset/images/image4.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        )),
                    Text(
                      "THANK YOU",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 29, bottom: 111),
                        child: Text(
                          "Enjoy your unlimited movies, TV shows,\nand many more.",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        )),
                    Text(
                      "You have subscribed for a Monthly package.",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 76),
                        child: Text(
                          "Your subscription will help \n support orphans and disadvantaged children \n around the world.",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            backgroundColor: Color.fromARGB(255, 41, 40, 40),
            currentIndex: 2,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("asset/images/Vectorhome.png"),
                  size: 15,
                ),
                backgroundColor: Color.fromARGB(255, 41, 40, 40),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("asset/images/Vectornews.png"),
                    size: 15,
                  ),
                  backgroundColor: Color.fromARGB(255, 41, 40, 40),
                  label: "News"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("asset/images/Vectorsubscribe.png"),
                    size: 15,
                  ),
                  backgroundColor: Color.fromARGB(255, 41, 40, 40),
                  label: "Subscribe"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("asset/images/heart1 1.png"),
                    size: 15,
                  ),
                  backgroundColor: Color.fromARGB(255, 41, 40, 40),
                  label: "Victim"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("asset/images/Vectorprofile.png"),
                    size: 15,
                  ),
                  backgroundColor: Color.fromARGB(255, 70, 68, 68),
                  label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
