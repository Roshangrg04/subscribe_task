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

class Devices {
  final String name;
  final String appVersion;
  final addedDate;
  Devices(this.name, this.appVersion, this.addedDate);
}

List<Devices> myDevices = [
  Devices('iphone', '5.3.4', '2021-08-12 09:04:32'),
  Devices('Android', '5.3.4', '2021-08-12 09:04:32'),
  Devices('Andriod', '5.3.4', '2021-08-12 09:04:32'),
  Devices('iphone', '5.3.4', '2021-08-12 09:04:32'),
  Devices('Android', '5.3.4', '2021-08-12 09:04:32'),
  Devices('Andriod', '5.3.4', '2021-08-12 09:04:32'),
];
