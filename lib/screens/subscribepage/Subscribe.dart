import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:subscribe_task/models/models.dart';

import '../../models/payments.dart';

class SubsPage extends StatefulWidget {
  const SubsPage({Key? key}) : super(key: key);

  @override
  State<SubsPage> createState() => _SubsPageState();
}

class _SubsPageState extends State<SubsPage> {
  @override
  int _current = 0;

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
                      child: IconButton(
                        icon: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                            items: dataList.map((i) {
                              return Builder(builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 294,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(21)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  29.65, 33, 25.81, 19.5),
                                              child: Image.asset(
                                                i.imageURL,
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
                                                    padding: EdgeInsets.only(
                                                        bottom: 11),
                                                    child: Text(
                                                        "\$" +
                                                            i.price
                                                                .toStringAsPrecision(
                                                                    4),
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                  ),
                                                  Text("Monthly",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ))
                                                ]),
                                          ],
                                        ),
                                        Text(i.plan,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, bottom: 40, right: 10),
                                          child: Text(
                                            i.desc,
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
                                                context, "/" + i.route)
                                          },
                                          child: Container(
                                            height: 69,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 247, 19, 3),
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(21),
                                                    bottomRight:
                                                        Radius.circular(21))),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Subscribe",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        ))
                                      ],
                                    ));
                              });
                            }).toList()),
                        SizedBox(
                          height: 20,
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: _current,
                          count: dataList.length,
                          effect:
                              ScrollingDotsEffect(activeDotColor: Colors.white),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 22, bottom: 19),
                      child: Text(
                        "Recent Subscription",
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
                                          padding: EdgeInsets.only(
                                              top: 21, bottom: 8),
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
                                            paymentHistory[index]
                                                .subscibed_date,
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
      ),
    );
  }
}
