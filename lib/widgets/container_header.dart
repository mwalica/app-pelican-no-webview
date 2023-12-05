import 'package:flutter/material.dart';

class ContainerHeader extends StatelessWidget {
  final String title;
  const ContainerHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                letterSpacing: -0.6,
              ),
        ),
        const Spacer(),
        Text(
          'See all',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: const Color.fromARGB(255, 136, 223, 169),
              fontWeight: FontWeight.w600,
              letterSpacing: -0.6),
        ),
      ],
    );
  }
}
