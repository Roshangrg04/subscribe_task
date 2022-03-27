class Payments {
  final String imgUrl;
  final String plan;
  String subscibed_date;
  double price;
  Payments(this.imgUrl, this.plan, this.subscibed_date, this.price);
}

List<Payments> paymentHistory = [
  Payments(
      "asset/images/image5.png", "Netflix Standard", "1 Feb 11:30 am", 20.00),
  Payments("asset/images/image7.png", "Spotify", "15 Feb 1:30 pm", 15.00),
  Payments(
      "asset/images/image8.png", "Youtube Premium", "21 Feb 2:41 am", 48.00)
];
