// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import '../util/date_time_extension.dart';
import '../Components/BalanceCard.dart';
import '../Components/MonthNavigationButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(DateTimeExtension.getMonthName(date.month)),
        leading: MonthNavigationButton(
            text: DateTimeExtension.getMonthName(date.month - 1)),
        trailing: MonthNavigationButton(
          text: DateTimeExtension.getMonthName(date.month + 1),
          next: true,
        ),
      ),
      child: ListView(
        children: [
          Container(
            child: BalanceCard(balance: "10"),
          ),
        ],
      ),
    );
  }
}
