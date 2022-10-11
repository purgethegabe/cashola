import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/main_text_theme.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  const BalanceCard({required this.balance});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 13,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("SALDO ATUAL TOTAL",
                    style: MainTextTheme.miniTitleText(context)),
                Icon(CupertinoIcons.info_circle),
              ],
            ),
            Align(
                child: Text(
                  "R\$${balance}",
                  style: MainTextTheme.balanceText(context),
                ),
                alignment: Alignment.centerLeft),
          ],
        ),
      ),
    );
  }
}
