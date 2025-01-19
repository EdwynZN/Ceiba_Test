import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:ceiba_test/feature/user/presentation/widget/row_information_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class UserCard extends StatelessWidget {
  const UserCard({required this.userReadModel, super.key});

  final UserReadModel userReadModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: const RoundedRectangleBorder(),
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 6,
          children: [
            Text(
              userReadModel.name,
              style: theme.textTheme.headlineSmall?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            RowInformation(text: userReadModel.phone, iconData: Icons.phone),
            RowInformation(text: userReadModel.email, iconData: Icons.email),
            const Gap(4),
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
