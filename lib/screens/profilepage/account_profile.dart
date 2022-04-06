import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  AccountPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String name = 'Zeal Heal';
  String dateBS = '2049-5-11';
  String dateAD = '1992-9-23';
  String gender = 'Male';
  String phonenum = '98xxxxxxx';
  String email = 'zealheal@email.com';
  String occupation = 'Businessman';
  String address = 'Kathmandu,Nepal';
  String documentType = 'Citizenship';
  bool editable = false;
  bool nameEdit = false;
  bool dobBSEdit = false;
  bool dobADEdit = false;
  bool genderEdit = false;
  bool phonenumEdit = false;
  bool occupationEdit = false;
  bool addressEdit = false;
  bool emailEdit = false;
  bool docEdit = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
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
                padding: EdgeInsets.only(top: 39, bottom: 25),
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
              Row(
                children: [
                  Text(
                    "Personal Details ",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )),
                  ),
                  const Spacer(),
                  !editable
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              editable = !editable;
                            });
                          },
                          child: Text(
                            "Edit",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              editable = !editable;
                              editable = false;
                              nameEdit = false;
                              dobBSEdit = false;
                              dobADEdit = false;
                              genderEdit = false;
                              phonenumEdit = false;
                              occupationEdit = false;
                              addressEdit = false;
                              emailEdit = false;
                              docEdit = false;
                            });
                          },
                          child: Text(
                            "Done",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                        ),
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 37),
                      child: Text(
                        "Full Name:",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        )),
                      ),
                    ),
                    !nameEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = !nameEdit;
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Container(
                                height: 20,
                                child: Text(
                                  name,
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                    hintStyle: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    name = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    nameEdit = false;
                                  });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Date of Birth(B.S)",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !dobBSEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      dobBSEdit = true;
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Text(
                                dateBS,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
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
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  dateBS = value;
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    dobBSEdit = true;
                                  });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Date of Birth(AD)",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !dobADEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      dobADEdit = true;
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Text(
                                dateAD,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
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
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    dateAD = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    dobADEdit = false;
                                  });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Gender",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !genderEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      setState(() {
                                        genderEdit = true;
                                      });
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Text(
                                gender,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
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
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    gender = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    genderEdit = false;
                                  });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Phone Number",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !phonenumEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      phonenumEdit = true;
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Text(
                                phonenum,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
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
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    phonenum = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    phonenumEdit = false;
                                  });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Email",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !emailEdit
                        ? GestureDetector(
                            onTap: () {
                              emailEdit ? setState(() {}) : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Text(
                                email,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
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
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    emailEdit = false;
                                  });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Occupation",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !occupationEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      occupationEdit = true;
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Text(
                                occupation,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
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
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    occupation = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  occupationEdit = false;
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Address",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !addressEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      addressEdit = true;
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Text(
                                address,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
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
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    address = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  addressEdit = false;
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Document type",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !docEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      docEdit = true;
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Text(
                                documentType,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
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
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    documentType = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    docEdit = false;
                                  });
                                },
                              ),
                            ),
                          ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
