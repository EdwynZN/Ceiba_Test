import 'package:flutter/material.dart';

class RowInformation extends StatelessWidget {
  const RowInformation({
    required this.iconData,
    required this.text,
    super.key, 
  });

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Icon(iconData, color: Theme.of(context).colorScheme.primary),
        Text(text),
      ],
    );
  }
}
