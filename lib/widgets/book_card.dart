import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard(
      {super.key,
      required this.title,
      required this.author,
      required this.coverUrl});

  final String title;
  final String author;
  final String coverUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Container(
            width: 132,
            height: 132,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 134, 164, 145),
                borderRadius: BorderRadius.circular(12.0)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://pelicanapp-cms-dev.thankfulbay-7553abc3.westeurope.azurecontainerapps.io/assets/$coverUrl',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Text(
            title.length > 18 ? '${title.substring(0, 12)}...' : title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            author,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 0.6),
                ),
          ),
        ],
      ),
    );
  }
}
