class Article {
  bool? articleOfTheWeek;
  String? author;
  String? coverUrl;
  String? date;
  String? description;
  String? header;
  String? id;
  String? title;
  String? body;
  String? languageCode;
  List<AudioFiles>? audioFiles;

  Article(
      {this.articleOfTheWeek,
      this.author,
      this.coverUrl,
      this.date,
      this.description,
      this.header,
      this.id,
      this.title,
      this.body,
      this.languageCode,
      this.audioFiles});

  Article.fromJson(Map<String, dynamic> json) {
    articleOfTheWeek = json['articleOfTheWeek'];
    author = json['author'];
    coverUrl = json['coverUrl'];
    date = json['date'];
    description = json['description'];
    header = json['header'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
    languageCode = json['languageCode'];
    if (json['audioFiles'] != null) {
      audioFiles = <AudioFiles>[];
      json['audioFiles'].forEach((v) {
        audioFiles!.add(AudioFiles.fromJson(v));
      });
    }
  }

  static List<Article> articles(List data) {
    return data.map((article) => Article.fromJson(article)).toList();
  }
}

class AudioFiles {
  String? id;
  String? dateCreated;
  String? dateUpdated;
  String? name;
  String? url;
  String? bookId;
  String? articleId;
  String? languageCode;

  AudioFiles(
      {this.id,
      this.dateCreated,
      this.dateUpdated,
      this.name,
      this.url,
      this.bookId,
      this.articleId,
      this.languageCode});

  AudioFiles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateCreated = json['dateCreated'];
    dateUpdated = json['dateUpdated'];
    name = json['name'];
    url = json['url'];
    bookId = json['bookId'];
    articleId = json['articleId'];
    languageCode = json['languageCode'];
  }
}
