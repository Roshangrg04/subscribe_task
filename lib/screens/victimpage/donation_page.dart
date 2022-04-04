import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:subscribe_task/models/victims.dart';
import 'package:subscribe_task/screens/victimpage/components/card_builder.dart';
import 'package:subscribe_task/screens/victimpage/components/s.dart';

class DonationPage extends StatefulWidget {
  final Victims item;
  const DonationPage({Key? key, required this.item}) : super(key: key);

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double target = 56900;
    double total = 43000;
    TabController _tabController =
        TabController(vsync: this, length: 2, initialIndex: 0);
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "asset/images/DarkThemeBackground1-013.png",
              ),
              fit: BoxFit.cover)),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 39, bottom: 25),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Text(
                widget.item.type,
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, bottom: 29),
                height: 218,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(widget.item.imgurl),
                        fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 20,
                child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.red,
                    tabs: [
                      Tab(
                        text: "Summary",
                      ),
                      Tab(
                        text: "Donate",
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            widget.item.summary,
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Read More",
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              height: 120,
                              color: Color.fromARGB(
                                38,
                                255,
                                255,
                                255,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 13, bottom: 16),
                                    child: Text(
                                      "Charity Target",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )),
                                    ),
                                  ),
                                  LinearPercentIndicator(
                                    percent: 43000 / 56900,
                                    progressColor: Colors.lightGreen,
                                    backgroundColor: Colors.white,
                                    trailing: Text(
                                      ((total / target) * 100)
                                              .floor()
                                              .toString() +
                                          "%",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 27),
                                    child: Row(
                                      children: [
                                        Text(
                                          "\$$total/\$$target",
                                          style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          )),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: 8, top: 8),
                                          child: Text(
                                            "Raised",
                                            style: GoogleFonts.roboto(
                                                textStyle: const TextStyle(
                                              fontSize: 9,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            )),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                            height: 20,
                                            child: buildStackedImages()),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Text(
                                            "$donatorsNum donated",
                                            style: GoogleFonts.roboto(
                                                textStyle: const TextStyle(
                                              fontSize: 9,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 17),
                                child: Text(
                                  "How much do you want to donate?",
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                                  textAlign: TextAlign.start,
                                )),
                            TextField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                              decoration: InputDecoration(
                                  hintStyle: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(51, 255, 255, 255),
                                    fontWeight: FontWeight.w600,
                                  )),
                                  hintText: "ENTER YOUR AMOUNT",
                                  fillColor: Color.fromARGB(36, 255, 255, 255),
                                  filled: true,
                                  border: InputBorder.none),
                            ),
                            const SizedBox(
                              height: 27,
                            ),
                            Text(
                              "Payment Method",
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                            Wrap(
                              spacing: 8,
                              children: [
                                for (var item in paymentOptions)
                                  buildCard(item),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    ))));
  }

  Widget buildStackedImages() {
    final double size = 20;
    final double xShift = 5;

    final items = donators.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidgets(
      items: items,
      size: size,
      xShift: xShift,
    );
  }

  Widget buildImage(String urlImage) {
    final double borderSize = 1;

    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
