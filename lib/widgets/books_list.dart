import 'package:apppelican_3_flutter/models/book.dart';
import 'package:apppelican_3_flutter/services/api.dart';
import 'package:apppelican_3_flutter/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BooksList extends StatefulWidget {
  const BooksList({super.key});

  @override
  State<BooksList> createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  final api = Api();
  late Future<List<Book>> _loadedBooks;

  @override
  void initState() {
    super.initState();
    _loadedBooks = api.getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loadedBooks,
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          if (snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No books to shows'),
            );
          }

          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data!.length,
            itemBuilder: (ctx, i) => SizedBox(
              height: 100,
              child: BookCard(
                  title: snapshot.data![i].title ?? "No title",
                  author: snapshot.data![i].author ?? "No author",
                  coverUrl: snapshot.data![i].coverUrl ?? "No cover"),
            ),
          );
        });
  }
}
