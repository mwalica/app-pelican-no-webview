import 'package:apppelican_3_flutter/models/article.dart';
import 'package:apppelican_3_flutter/services/api.dart';
import 'package:flutter/material.dart';
import 'package:apppelican_3_flutter/widgets/article_card.dart';

class ArticlesList extends StatefulWidget {
  const ArticlesList({super.key});

  @override
  State<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  final api = Api();
  late Future<List<Article>> _loadedArticles;

  @override
  void initState() {
    super.initState();
    _loadedArticles = api.getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadedArticles,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        if (snapshot.data!.isEmpty) {
          return const Center(child: Text('No articles to shows'));
        }
        // for (final article in snapshot.data!) {
        return Column(
          children: [
            for (final article in snapshot.data!)
              ArticleCard(
                title: article.title!,
                author: article.author!,
                coverUrl: article.coverUrl!,
              ),
          ],
        );
        // }
      },
    );
  }
}
