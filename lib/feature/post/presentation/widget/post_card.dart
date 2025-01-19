import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({required this.title, required this.body, super.key});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(title, style: textTheme.titleMedium, maxLines: 2),
            Text(body, style: textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
