import 'package:cashola/themes/main_text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountsCard extends StatelessWidget {
  final List<Widget> children;
  const AccountsCard({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Contas",
                  style: MainTextTheme.titleText(context),
                ),
                const Spacer(),
                GestureDetector(
                  child: const Icon(CupertinoIcons.plus),
                  onTap: () {},
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  child: const Icon(CupertinoIcons.info_circle),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: children,
            ),
            const Divider(
              thickness: 1,
              indent: 4,
              endIndent: 4,
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Saldo Total",
                  style: MainTextTheme.titleText(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
