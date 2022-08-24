import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/utils/routes.dart';

class SpotifySub extends StatefulWidget {
  const SpotifySub({Key? key}) : super(key: key);

  @override
  State<SpotifySub> createState() => _SpotifySubState();
}

class _SpotifySubState extends State<SpotifySub> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "asset/images/DarkThemeBackground1-013.png",
                  ),
                  fit: BoxFit.cover)),
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
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
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 87, bottom: 18),
                      child: Image.asset(
                        "asset/images/image7.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      )),
                  Text(
                    "Upgrade Now",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 33, bottom: 33),
                      child: Text(
                        "Unlimited songs without ads",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      )),
                  Text(
                    "Choose A Plan",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 25, 23, 29),
                            child: Container(
                              width: 114,
                              height: 153,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Container(
                                    width: 113,
                                    height: 27,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 101, 244, 205),
                                              Color.fromARGB(255, 90, 91, 243)
                                            ]),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      "Save 35%",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 16, bottom: 16),
                                    child: Text(
                                      "05",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 36,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Yearly",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 13),
                                    child: Text(
                                      "\$10.00 a year",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 23, 29),
                            child: Container(
                              width: 114,
                              height: 153,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Container(
                                    width: 113,
                                    height: 27,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 101, 244, 205),
                                              Color.fromARGB(255, 90, 91, 243)
                                            ]),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      "Save 20%",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 16, bottom: 16),
                                    child: Text(
                                      "12",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 36,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Monthly",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 13),
                                    child: Text(
                                      "\$15.00 a month",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 2, 29),
                            child: Container(
                              width: 114,
                              height: 153,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Container(
                                    width: 113,
                                    height: 27,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 101, 244, 205),
                                              Color.fromARGB(255, 90, 91, 243)
                                            ]),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      "Save 55%",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 16, bottom: 16),
                                    child: Text(
                                      "03",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 36,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Yearly",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 13),
                                    child: Text(
                                      "\$25.00 a year",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 29, bottom: 31),
                    child: Text(
                      "Trial Period: 1 week for Free",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 388,
                    height: 72,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 101, 244, 205),
                              Color.fromARGB(255, 90, 91, 243)
                            ]),
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                      onTap: () => {
                        Navigator.pushNamed(context, MyRoutes.netflixSubscribed)
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 26, bottom: 27),
                        child: Text(
                          "Get 3 Months / \$15.00",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 33, bottom: 14),
                    child: Text(
                      "View your plan and monthly cost",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Sign in to your",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        )),
                        children: [
                          TextSpan(
                            text: " Account",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline)),
                          ),
                          TextSpan(
                            text: " and select",
                          ),
                          TextSpan(
                            text: " Billing",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline)),
                          ),
                          TextSpan(
                              text:
                                  " details to see your \n Netflix plan and billing history.\n\nYou can compare plans and pricing and \nchange your plan at any time.")
                        ]),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
