import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SubsPage extends StatefulWidget {
  const SubsPage({Key? key}) : super(key: key);

  @override
  State<SubsPage> createState() => _SubsPageState();
}

class _SubsPageState extends State<SubsPage> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 39, left: 20),
                      child: Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 17, 20, 31),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.search,
                                size: 18, color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21)),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 19, bottom: 19),
                      child: Text(
                        "Plans",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    Column(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                              height: 294,
                              enlargeCenterPage: true,
                              viewportFraction: 0.65,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                          items: [
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 294,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(21)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              29.65, 33, 25.81, 19.5),
                                          child: Image.asset(
                                            imgList[0],
                                            height: 72.5,
                                            width: 65.54,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 11),
                                                child: Text("\$" + money[0],
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ),
                                              Text("Monthly",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                  ))
                                            ]),
                                      ],
                                    ),
                                    Text(plan[0],
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 29),
                                      child: Text(
                                        "Unlimited movies, TV shows and many more",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                        child: InkWell(
                                      onTap: () => {
                                        Navigator.pushNamed(
                                            context, "/netflixsubs")
                                      },
                                      child: Container(
                                        height: 69,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 247, 19, 3),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(21),
                                                bottomRight:
                                                    Radius.circular(21))),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Subscribe",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ))
                                  ],
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 294,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(21)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              29.65, 33, 25.81, 19.5),
                                          child: Image.asset(
                                            imgList[1],
                                            height: 72.5,
                                            width: 65.54,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 11),
                                              child: Text("\$" + money[1],
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            Text(
                                              "Monthly",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      plan[1],
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 29),
                                      child: Text(
                                        "Enjoy the videos and music you love, upload original...",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      height: 69,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 247, 19, 3),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(21),
                                              bottomRight:
                                                  Radius.circular(21))),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Subscribe",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ))
                                  ],
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 294,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(21)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              29.65, 33, 25.81, 19.5),
                                          child: Image.asset(
                                            imgList[2],
                                            height: 72.5,
                                            width: 65.54,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 11),
                                              child: Text("\$" + money[2],
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            Text(
                                              "Monthly",
                                              style: TextStyle(
                                                  fontSize: 18,
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
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 29),
                                      child: Text(
                                        "Play Your Favorite Songs. Find New Music and See...",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      height: 69,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 247, 19, 3),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(21),
                                              bottomRight:
                                                  Radius.circular(21))),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Subscribe",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ))
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: _current,
                          count: imgList.length,
                          effect: ScrollingDotsEffect(
                              fixedCenter: true, activeDotColor: Colors.white),
                        )
                      ],
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
                                padding: EdgeInsets.only(top: 21, bottom: 8),
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
            items: <BottomNavigationBarItem>[
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
                label: "Victim",
                backgroundColor: Color.fromARGB(255, 41, 40, 40),
              ),
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
