import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/main.dart';
import 'package:subscribe_task/models/models.dart';
import 'package:subscribe_task/models/newstab.dart';
import 'package:subscribe_task/models/victims.dart';
import 'package:subscribe_task/utils/routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "asset/images/DarkThemeBackground1-013.png",
                  ),
                  fit: BoxFit.cover)),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(28, 33, 33, 28),
                            child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("asset/images/zeal.png")),
                          ),
                          Text(
                            "Zeal Heal",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 28, 24, 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "What would you like to ",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                                children: [
                                  TextSpan(
                                    text: "Subscribe",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.red)),
                                  ),
                                  TextSpan(
                                    text: "?",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, MyRoutes.subspage);
                              },
                              child: Text(
                                "See all",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        height: 106,
                        width: double.infinity,
                        child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: dataList.length,
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 400,
                                    mainAxisSpacing: 14),
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                  width: 119.92,
                                  height: 105,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(21)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            45, 12, 44.12, 1.24),
                                        child: Image.asset(
                                          dataList[index].imageURL,
                                          height: 30,
                                          width: 30,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        dataList[index].plan,
                                        style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black)),
                                        textAlign: TextAlign.center,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.06, bottom: 12),
                                        child: Text(
                                          "\$" +
                                              dataList[index]
                                                  .price
                                                  .toStringAsPrecision(4),
                                          style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                  fontSize: 7,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      Expanded(
                                          child: Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(21),
                                            bottomRight: Radius.circular(21),
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Subscribe",
                                            style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ));
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 26, 24, 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Watch Latest ",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                                children: [
                                  TextSpan(
                                    text: "News",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.red)),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                selectedIndexGlobal.value = 1;
                              },
                              child: Text(
                                "More",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        height: 216,
                        width: double.infinity,
                        child: GridView.builder(
                            itemCount: newsList.length,
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 250,
                                    mainAxisSpacing: 20),
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                  width: 220,
                                  height: 216,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(36, 196, 196, 196),
                                      borderRadius: BorderRadius.circular(21)),
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 139,
                                          width: 220,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(21),
                                                topRight: Radius.circular(21)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    newsList[index].imgUrl),
                                                fit: BoxFit.cover),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 11, 12, 13),
                                        child: Text(
                                          newsList[index].title,
                                          style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 10,
                                                backgroundImage: AssetImage(
                                                    "asset/images/zeal.png"),
                                              ),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 8),
                                                  child: Text(
                                                    newsList[index].source,
                                                    style: GoogleFonts.roboto(
                                                        textStyle: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.white)),
                                                  )),
                                              Spacer(),
                                              Text(
                                                newsList[index].date,
                                                style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                        fontSize: 7,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.white)),
                                              )
                                            ],
                                          ))
                                    ],
                                  ));
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 28, 24, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Build your ",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                                children: [
                                  TextSpan(
                                    text: "GIVELIST",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.red)),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                selectedIndexGlobal.value = 3;
                              },
                              child: Text(
                                "See all",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        width: double.infinity,
                        height: 180 * victimsList.length / 2,
                        child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: victimsList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                            ),
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                height: 120,
                                width: 184,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            victimsList[index].imgurl),
                                        fit: BoxFit.contain)),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    victimsList[index].type,
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
