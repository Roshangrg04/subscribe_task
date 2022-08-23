import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/models/newstab.dart';
import 'package:like_button/like_button.dart';

class NewsDesc extends StatefulWidget {
  final PopularNews newsItem;

  const NewsDesc({Key? key, required this.newsItem}) : super(key: key);

  @override
  State<NewsDesc> createState() => _NewsDescState();
}

class _NewsDescState extends State<NewsDesc> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollcontroller = ScrollController();

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "asset/images/DarkThemeBackground1-013.png",
                  ),
                  fit: BoxFit.cover)),
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 39, left: 20),
                    child: IconButton(
                      icon: const Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 17, 20, 31),
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(Icons.search,
                              size: 18, color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21)),
                        ),
                      )),
                  Row(
                    children: [
                      const Spacer(),
                      LikeButton(
                        isLiked: widget.newsItem.isLiked,
                        circleColor: CircleColor(
                            start: Colors.blue, end: Colors.lightBlue),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.blue,
                          dotSecondaryColor: Colors.lightBlue,
                        ),
                        size: 25,
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.thumb_up,
                            color: isLiked ? Colors.blue : Colors.white,
                          );
                        },
                        onTap: (isLiked) async {
                          isLiked = !isLiked;
                          widget.newsItem.isLiked = isLiked;
                          return isLiked;
                        },
                      ),
                      LikeButton(
                        isLiked: widget.newsItem.isSaved,
                        circleColor:
                            CircleColor(start: Colors.pink, end: Colors.red),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.pink,
                          dotSecondaryColor: Colors.red,
                        ),
                        size: 25,
                        likeBuilder: (bool isSaved) {
                          return Icon(
                            Icons.favorite,
                            color: isSaved ? Colors.redAccent : Colors.white,
                          );
                        },
                        onTap: (isSaved) async {
                          isSaved = !isSaved;
                          widget.newsItem.isSaved = isSaved;
                          return isSaved;
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(20),
                    height: 48,
                    child: Text(
                      widget.newsItem.title,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      )),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 216,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.newsItem.imgurl),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 24, 20, 24),
                    height: 357,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(21)),
                    child: RawScrollbar(
                      controller: _scrollcontroller,
                      isAlwaysShown: true,
                      thickness: 8,
                      thumbColor: Colors.grey,
                      child: SingleChildScrollView(
                        controller: _scrollcontroller,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 5),
                          child: Text(
                            widget.newsItem.content,
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            )),
                          ),
                        ),
                      ),
                    ),
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
