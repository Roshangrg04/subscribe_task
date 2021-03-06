import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:subscribe_task/models/models.dart';
import 'package:subscribe_task/models/newstab.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> with TickerProviderStateMixin {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(vsync: this, length: 3, initialIndex: 1);
    final ScrollController _scrollcontroller = ScrollController();
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
                        prefixIcon:
                            Icon(Icons.search, size: 18, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21)),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: CarouselSlider.builder(
                      itemCount: news1List.length,
                      itemBuilder: (context, itemIndex, realIndex) {
                        return Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  news1List[itemIndex].title,
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white)),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: IconButton(
                                    icon: ImageIcon(
                                      AssetImage(
                                        "asset/images/Vectorplay.png",
                                      ),
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                          width: double.infinity,
                          height: 207,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    news1List[itemIndex].url,
                                  ),
                                  fit: BoxFit.cover)),
                        );
                      },
                      options: CarouselOptions(
                          height: 207,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    )),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: AnimatedSmoothIndicator(
                    activeIndex: _current,
                    count: dataList.length,
                    effect: WormEffect(activeDotColor: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 20,
                  child: TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(
                          text: "Most Recent",
                        ),
                        Tab(
                          text: "Popular",
                        ),
                        Tab(
                          text: "Most Viewed",
                        )
                      ]),
                ),
                Container(
                  height: 360,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Text("Most Recent"),
                      ),
                      Container(
                          height: 380,
                          child: RawScrollbar(
                            thumbColor: Colors.white,
                            isAlwaysShown: true,
                            controller: _scrollcontroller,
                            radius: Radius.circular(35),
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                controller: _scrollcontroller,
                                itemCount: popularList.length,
                                shrinkWrap: true,
                                padding: EdgeInsets.all(10),
                                itemBuilder: (
                                  context,
                                  index,
                                ) {
                                  return Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: 7, bottom: 16),
                                        height: 90,
                                        width: 111,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(21),
                                          bottomLeft: Radius.circular(21),
                                        )),
                                        child: Image.asset(
                                          popularList[index].imgurl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(bottom: 16),
                                          height: 90,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              138,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(21),
                                                bottomRight:
                                                    Radius.circular(21),
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                14, 10, 14, 0),
                                            child: Column(
                                              children: [
                                                Text(
                                                  popularList[index].title,
                                                  style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.black)),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  popularList[index].preview,
                                                  style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                          fontSize: 9,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.black)),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                    popularList[index].time,
                                                    style: GoogleFonts.roboto(
                                                        textStyle: TextStyle(
                                                            fontSize: 9,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  );
                                }),
                          )),
                      Container(
                        color: Colors.white,
                        child: Text("Most Viewed"),
                      ),
                    ],
                  ),
                )
              ],
            )),
      )
    ]));
  }
}
