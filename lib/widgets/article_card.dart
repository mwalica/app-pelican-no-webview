import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.title,
    required this.author,
    required this.coverUrl,
  });

  final String title;
  final String author;
  final String coverUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 224, 245, 244),
          borderRadius: BorderRadius.circular(16.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              'https://pelicanapp-cms-dev.thankfulbay-7553abc3.westeurope.azurecontainerapps.io/assets/$coverUrl',
              width: 100,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      title.length > 18
                          ? '${title.substring(0, 18)}...'
                          : title,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 20)),
                  Text(author,
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
