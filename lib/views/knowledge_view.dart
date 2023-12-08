import 'package:apppelican_3_flutter/widgets/articles_list.dart';
import 'package:apppelican_3_flutter/widgets/books_list.dart';
import 'package:apppelican_3_flutter/widgets/container_header.dart';
import 'package:flutter/material.dart';

class KnowledgeView extends StatefulWidget {
  const KnowledgeView({super.key});

  @override
  State<KnowledgeView> createState() => _KnowledgeViewState();
}

class _KnowledgeViewState extends State<KnowledgeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //books container
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: ContainerHeader(
                  title: 'Books',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: SizedBox(
                      width: double.maxFinite,
                      height: 200,
                      child: BooksList())),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: Color.fromRGBO(255, 255, 255, 0.12),
                height: 8,
              ),
            ],
          ),

          //Articles container
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: ContainerHeader(title: 'Articles'),
              ),
              ArticlesList(),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: Color.fromRGBO(255, 255, 255, 0.12),
                height: 8,
              ),
            ],
          ),

          //podcasts container
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: ContainerHeader(
                  title: 'Podcasts',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: Column(
                  children: [
                    Container(
                      width: 132,
                      height: 132,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 249, 189),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            'https://pelicanapp-cms-prod.reddune-d2bc148c.westeurope.azurecontainerapps.io/assets/c2fe0147-5c38-469e-bd98-2b6404dbf9f3',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'The Psychology of...',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Tim Ferriss & Morga...',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 255, 255, 0.6),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
