import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({required this.title, required this.body, super.key});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Text(title, style: const TextStyle(fontSize: 20)),
            Text(body, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
