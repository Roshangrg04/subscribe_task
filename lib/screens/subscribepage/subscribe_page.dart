import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:subscribe_task/models/models.dart';
import 'package:subscribe_task/models/payments.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({Key? key}) : super(key: key);

  @override
  State<SubscribePage> createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  @override
  int current_index = 0;
  int _current = 0;
  int percentage = 75;

  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
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
                    child: IconButton(
                      icon: Icon(CupertinoIcons.back),
                      color: Colors.white,
                      onPressed: () {
                        SystemNavigator.pop();
                      },
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
                    items: dataList.map((i) {
                      return Builder(builder: (BuildContext context) {
                        return InkWell(
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
                                        child: Image.asset(
                                          i.imageURL,
                                          height: 42,
                                          width: 42,
                                        ),
                                      ),
                                      Column(children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 12, bottom: 2.4),
                                          child: Text(
                                              "\$ " +
                                                  i.price
                                                      .toStringAsPrecision(2),
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
                                  Text(i.plan,
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
                        );
                      });
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: AnimatedSmoothIndicator(
                      activeIndex: _current,
                      count: dataList.length,
                      effect: ScrollingDotsEffect(
                          fixedCenter: true, activeDotColor: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 22, 0, 19),
                    child: Text(
                      "Payment History",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  if (paymentHistory.length == 0) ...[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      padding: EdgeInsets.only(top: 20),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "NO SUBSCRIPTION YET",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(
                                      255,
                                      142,
                                      142,
                                      142,
                                    ))),
                          )),
                    )
                  ] else ...[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 93 * paymentHistory.length.toDouble(),
                      child: ListView.builder(
                          itemCount: paymentHistory.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.fromLTRB(20, 0, 20, 21),
                              height: 72,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(19, 26, 21, 21),
                                    child: Image.asset(
                                      paymentHistory[index].imgUrl,
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 21, bottom: 8),
                                        child: Text(
                                          paymentHistory[index].plan,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          paymentHistory[index].subscibed_date,
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
                            );
                          }),
                    )
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
