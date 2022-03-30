class PopularNews {
  final String imgurl;
  final String title;
  final String preview;
  final String time;
  PopularNews(this.imgurl, this.title, this.preview, this.time);
}

List<PopularNews> popularList = [
  PopularNews(
      'asset/images/news1.png',
      'Parliament ratifies MCC compact after years of delay ',
      'The US grant, one of the most debated agreements, gets through House of Representatives after ....',
      '2 hours'),
  PopularNews(
      'asset/images/news3.png',
      'MCC ratified by House of Representatives, at last',
      'After eleven years of its inception in Nepal, the House of Representatives of the Federal Parliament has,',
      '5 hours'),
  PopularNews(
      'asset/images/news4.png',
      'House ratifies \$500-million MCC compact',
      'The House of Representatives today ratified the Millennium Challenge Corporation compact with interpretative declaration.',
      '16 hours'),
  PopularNews(
      'asset/images/news5.png',
      'Ruling coalition decides to ratify MCC compact from Parliament',
      'Decision comes with agreement on attaching "interpretative declaration" regarding concerns about...',
      '2 days'),
  PopularNews(
      'asset/images/news5.png',
      'Ruling coalition decides to ratify MCC compact from Parliament',
      'Decision comes with agreement on attaching ‘interpretative declaration’ regarding concerns about...',
      '2 days'),
];
