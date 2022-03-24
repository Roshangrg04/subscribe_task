import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _current = 0;
  int percentage = 75;
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 26, 0, 11),
                      child: Text(
                        "Good Morning",
                        style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 24, color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 39),
                      child: Text(
                        "Zeal Heal",
                        style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 32),
                      height: 106,
                      width: 388,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(21, 19, 43, 20),
                            height: 67,
                            width: 67,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 101, 244, 205),
                                    Color.fromARGB(255, 90, 91, 243)
                                  ]),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            child: CircularPercentIndicator(
                              radius: 43,
                              backgroundColor: Colors.black,
                              progressColor: Color.fromARGB(255, 233, 231, 231),
                              percent: percentage / 100,
                              center: Text(
                                "%$percentage",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 19, bottom: 16),
                                  child: Text(
                                    "\$768.00",
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "Amount",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 164,
                          viewportFraction: 0.5,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items: [
                        InkWell(
                          onTap: () =>
                              {Navigator.pushNamed(context, "/subspage")},
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 164,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(19, 24, 12, 14),
                                        child: Image.asset(imgList[0]),
                                      ),
                                      Column(children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 12, bottom: 2.4),
                                          child: Text("\$" + money[0],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Text("Monthly",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey),
                                            textAlign: TextAlign.left)
                                      ]),
                                    ],
                                  ),
                                  Text(plan[0],
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                  SizedBox(height: 16),
                                  Expanded(
                                      child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(21),
                                            bottomRight: Radius.circular(21))),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: CircularPercentIndicator(
                                            radius: 14,
                                            lineWidth: 2.0,
                                            backgroundColor: Colors.black,
                                            progressColor: Color.fromARGB(
                                                255, 233, 231, 231),
                                            percent: 8 / 30,
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: Text(
                                              "08 Days Remaining",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 44, 43, 43)),
                                            )),
                                      ]),
                                    ),
                                  ))
                                ],
                              )),
                        ),
                        InkWell(
                          onTap: () =>
                              {Navigator.pushNamed(context, "/subspage")},
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 164,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 14, 3.92, 5),
                                        child: Image.asset(imgList[1]),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text("\$" + money[1],
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          Text(
                                            "Monthly",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(plan[1],
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                  SizedBox(height: 16),
                                  Expanded(
                                      child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(21),
                                            bottomRight: Radius.circular(21))),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: CircularPercentIndicator(
                                            radius: 14,
                                            lineWidth: 2.0,
                                            backgroundColor: Colors.black,
                                            progressColor: Color.fromARGB(
                                                255, 233, 231, 231),
                                            percent: 8 / 30,
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: Text(
                                              "08 Days Remaining",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 44, 43, 43)),
                                            )),
                                      ]),
                                    ),
                                  ))
                                ],
                              )),
                        ),
                        InkWell(
                          onTap: () =>
                              {Navigator.pushNamed(context, "/subspage")},
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 164,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(19, 24, 12, 14),
                                        child: Image.asset(imgList[2]),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 12, bottom: 2.4),
                                            child: Text("\$" + money[2],
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          Text(
                                            "Monthly",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    plan[2],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 16),
                                  Expanded(
                                      child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(21),
                                          bottomRight: Radius.circular(21)),
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: CircularPercentIndicator(
                                            radius: 14,
                                            lineWidth: 2.0,
                                            backgroundColor: Colors.black,
                                            progressColor: Color.fromARGB(
                                                255, 233, 231, 231),
                                            percent: 8 / 30,
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "08 Days Remaining",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 44, 43, 43)),
                                            )),
                                      ]),
                                    ),
                                  ))
                                ],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: AnimatedSmoothIndicator(
                        activeIndex: _current,
                        count: imgList.length,
                        effect: ScrollingDotsEffect(
                            fixedCenter: true, activeDotColor: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Payment History",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 19, 20, 21),
                      height: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(19, 26, 21, 21),
                            child: Image.asset(
                              "asset/images/image5.png",
                              height: 25,
                              width: 25,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 21, bottom: 8),
                                child: Text(
                                  "Netflix Standard",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Text(
                                  "1 Feb 11:30 am",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 72,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 21),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 26, 21, 21),
                            child: Image.asset(
                              "asset/images/image7.png",
                              height: 25,
                              width: 25,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 21, bottom: 8),
                                child: Text(
                                  "Spotify",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text("15 Feb 1:30 pm",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 72,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 21),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(1, 11, 0, 12),
                            child: Image.asset(
                              "asset/images/image8.png",
                              height: 65,
                              width: 49,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 21,
                                  bottom: 5,
                                ),
                                child: Text(
                                  "Youtube Premium",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text("21 Feb 2:41 am",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
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
