import 'dart:convert';

import 'package:apppelican_3_flutter/models/article.dart';
import 'package:apppelican_3_flutter/models/book.dart';
import 'package:http/http.dart' as http;

class Api {
  static const BASE_URL =
      'https://pelicanapp-api-dev.thankfulbay-7553abc3.westeurope.azurecontainerapps.io/api/';

  Future<List<Book>> getBooks() async {
    final uri = Uri.parse('${BASE_URL}books');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final jsonData = response.body;
      final data = json.decode(jsonData);
      return Book.books(data);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Article>> getArticles() async {
    final uri = Uri.parse('${BASE_URL}articles');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final jsonData = response.body;
      final data = json.decode(jsonData);
      return Article.articles(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
