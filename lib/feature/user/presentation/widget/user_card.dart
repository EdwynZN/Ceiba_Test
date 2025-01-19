import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserCard extends StatelessWidget {
  const UserCard({required this.userReadModel, super.key});

  final UserReadModel userReadModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 6,
          children: [
            Text(userReadModel.name, style: const TextStyle(fontSize: 24)),
            _RowInformation(text: userReadModel.phone, iconData: Icons.phone),
            _RowInformation(text: userReadModel.email, iconData: Icons.email),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  context.pushNamed(
                    'userPosts',
                    pathParameters: {'id': userReadModel.id.toString()},
                  );
                },
                child: const Text('Ver publicaciones'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RowInformation extends StatelessWidget {
  const _RowInformation({
    required this.iconData,
    required this.text,
  });

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [Icon(iconData), Text(text)],
    );
  }
}
