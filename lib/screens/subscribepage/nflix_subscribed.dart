import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NflixSubscribe extends StatefulWidget {
  const NflixSubscribe({Key? key}) : super(key: key);

  @override
  State<NflixSubscribe> createState() => _NflixSubscribeState();
}

class _NflixSubscribeState extends State<NflixSubscribe> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
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
                  textAlign: TextAlign.center,
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
      ),
    );
  }
}
