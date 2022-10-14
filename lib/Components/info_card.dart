import 'package:cashola/themes/main_text_theme.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final Widget info;
  final Widget mainAction;
  const InfoCard({
    super.key,
    required this.title,
    required this.info,
    required this.mainAction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        child: Column(
          children: [
            Text(
              title,
              style: MainTextTheme.bigBodyText(context),
            ),
            const SizedBox(height: 10),
            info,
            const SizedBox(height: 10),
            mainAction
          ],
        ),
      ),
    );
  }
}
