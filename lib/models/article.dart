class Article {
  final String title;
  final String subtitle;
  final String? imgUrl;

  const Article({
    required this.title,
    required this.subtitle,
    this.imgUrl,
  });
}
