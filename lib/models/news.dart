class News {
  final int id;
  final String title;
  final String imageURL;
  final String date;
  News({
    required this.id,
    required this.title,
    required this.imageURL,
    required this.date,
  });
}

List<News> dummyNews = [
  News(
      id: 1,
      title: 'Is it safe to stay at home during corona virus?',
      imageURL: 'news-1.png',
      date: '2022-03-20'),
  News(
      id: 2,
      title: 'Consume yellow citrus help you healthier',
      imageURL: 'news-2.png',
      date: '2022-03-15'),
  News(
      id: 3,
      title: 'Learn how to make a proper orange juice at home',
      imageURL: 'news-3.png',
      date: '2022-03-10'),
];
