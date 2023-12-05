import 'package:apppelican_3_flutter/data/articles.dart';
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
    return ListView(
      children: [
        //books container
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ContainerHeader(
                title: 'Books',
              ),
              const SizedBox(
                height: 16,
              ),
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
                      'https://pelicanapp-cms-prod.reddune-d2bc148c.westeurope.azurecontainerapps.io/assets/129780c0-58fb-41d9-b2d4-3d4e4e6e752f',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(
                'The Riches man in...',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'George S. Clason',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 255, 255, 0.6),
                    ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color.fromARGB(255, 51, 58, 67),
        ),

        //Articles container
        Column(children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            child: ContainerHeader(title: 'Articles'),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (ctx, i) => Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 245, 244),
                    borderRadius: BorderRadius.circular(16.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.network(
                        articles[i].imgUrl!,
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
                            Text('${articles[i].title.substring(0, 26)}...',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20)),
                            Text(articles[i].subtitle,
                                style: const TextStyle(
                                    color: Colors.black54, fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
        const Divider(
          color: Color.fromARGB(255, 51, 58, 67),
        ),
        //podcasts container
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ContainerHeader(
                title: 'Podcasts',
              ),
              const SizedBox(
                height: 16,
              ),
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
    );
  }
}