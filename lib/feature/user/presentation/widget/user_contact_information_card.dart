import 'package:ceiba_test/feature/user/presentation/widget/row_information_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserContactInformationCard extends StatelessWidget {
  const UserContactInformationCard({
    required this.email,
    required this.phone,
    super.key,
  });

  final String email;
  final String phone;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(
              'Información de contacto',
              style: textTheme.titleLarge!
                  .copyWith(color: theme.colorScheme.primary),
            ),
            const Gap(4),
            RowInformation(text: phone, iconData: Icons.phone),
            RowInformation(text: email, iconData: Icons.email),
          ],
        ),
      ),
    );
  }
}
