import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/main_text_theme.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  const BalanceCard({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("SALDO ATUAL TOTAL"),
                Icon(CupertinoIcons.chevron_forward),
              ],
            ),
            Text(
              "R\$ ${balance}",
              style: MainTextTheme.balanceText(context),
            ),
          ],
        ),
      ),
    );
  }
}
