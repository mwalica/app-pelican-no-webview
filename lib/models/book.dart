class Book {
  String? author;
  bool? bookOfTheWeek;
  String? coverUrl;
  String? date;
  String? description;
  String? id;
  String? link;
  String? title;
  String? languageCode;
  List<AudioFiles>? audioFiles;

  Book(
      {this.author,
      this.bookOfTheWeek,
      this.coverUrl,
      this.date,
      this.description,
      this.id,
      this.link,
      this.title,
      this.languageCode,
      this.audioFiles});

  Book.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    bookOfTheWeek = json['bookOfTheWeek'];
    coverUrl = json['coverUrl'];
    date = json['date'];
    description = json['description'];
    id = json['id'];
    link = json['link'];
    title = json['title'];
    languageCode = json['languageCode'];
    if (json['audioFiles'] != null) {
      audioFiles = <AudioFiles>[];
      json['audioFiles'].forEach((v) {
        audioFiles!.add(AudioFiles.fromJson(v));
      });
    }
  }

  static List<Book> books(List data) {
    return data.map((book) => Book.fromJson(book)).toList();
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
