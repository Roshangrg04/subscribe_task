class DataModel {
  final String imageURL;
  final double price;
  final String plan;
  final String desc;
  final String route;
  DataModel(this.imageURL, this.price, this.plan, this.desc, this.route);
}

List<DataModel> dataList = [
  DataModel('asset/images/image4.png', 20.00, 'Netlfix Standard',
      "Unlimited movies, TV shows and many more", "netflixsubs"),
  DataModel('asset/images/image8.png', 48.00, 'Youtube Premium',
      "Enjoy the videos and music you love, upload original...", ""),
  DataModel('asset/images/image7.png', 17.00, 'Spotify',
      "Play Your Favorite Songs. Find New Music and See...", "")
];

class News {
  final String imgUrl;
  final String title;
  final String author_img;
  final String source;
  final String date;
  News(this.imgUrl, this.title, this.author_img, this.source, this.date);
}

List<News> newsList = [
  News(
      'asset/images/news1.png',
      'Parliament ratifies MCC compact after years of delay',
      'asset/images/zeal.png',
      'BBC',
      '12 Jan, 2022'),
  News(
      'asset/images/news2.png',
      'MCC ratified by House of Representatives, at last',
      'asset/images/zeal.png',
      'BBC',
      '12 Jan, 2022')
];

class Victims {
  final String imgurl;
  final String type;
  Victims(this.imgurl, this.type);
}

List<Victims> victimsList = [
  Victims("asset/images/protectchild.png", "Protect Child"),
  Victims("asset/images/homeless.png", "Homeless Children"),
  Victims("asset/images/trafficking.png", "Sex Trafficking"),
  Victims("asset/images/slavery.png", "Slavery")
];

class news1 {
  final String url;
  final String title;
  news1(this.url, this.title);
}

List<news1> news1List = [
  news1('asset/images/newsBiden.png',
      'Biden calls for removal of normal trade relations with Russia: Updates'),
  news1('asset/images/newsBiden.png',
      'Biden calls for removal of normal trade relations with Russia: Updates'),
  news1('asset/images/newsBiden.png',
      'Biden calls for removal of normal trade relations with Russia: Updates')
];
