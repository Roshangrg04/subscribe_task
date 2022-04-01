import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:subscribe_task/models/victims.dart';

class VictimPage extends StatefulWidget {
  const VictimPage({Key? key}) : super(key: key);

  @override
  State<VictimPage> createState() => _VictimPageState();
}

class _VictimPageState extends State<VictimPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 56,
      decoration: BoxDecoration(
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
              padding: EdgeInsets.only(top: 39),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 17, 0, 20),
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
            Row(
              children: [
                Text(
                  "Total Amount Given",
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
                ),
                Spacer(),
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  height: 31,
                  width: 147,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff65F4CD)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "\$500",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 37, bottom: 23),
                child: Text(
                  "Featured Givelists",
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
                  textAlign: TextAlign.center,
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 100,
              width: double.infinity,
              child: GridView.builder(
                  itemCount: victimsList.length,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200, mainAxisSpacing: 14),
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21)),
                        child: Column(
                          children: [
                            Container(
                              height: 93,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(21),
                                    topRight: Radius.circular(21),
                                  ),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(victimsList[index].imgurl),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ));
                  }),
            ),
          ],
        ),
      ),
    ))));
  }
}
