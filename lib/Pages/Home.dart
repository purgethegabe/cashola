import 'package:cashola/Components/info_card.dart';
import 'package:cashola/Components/value_card.dart';
import 'package:cashola/enums/value_card_type.dart';
import 'package:flutter/cupertino.dart';
import '../Components/bank_card.dart';
import '../Components/month_navigation_button.dart';
import '../enums/bank.dart';
import '../util/date_time_extension.dart';
import '../Components/accounts_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          DateTimeExtension.getMonthName(date.month),
        ),
        leading: MonthNavigationButton(
          text: DateTimeExtension.getMonthName(date.month - 1),
        ),
        trailing: MonthNavigationButton(
          text: DateTimeExtension.getMonthName(date.month + 1),
          next: true,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            ValueCard(
              title: "Saldo atual total",
              value: 420,
              type: ValueCardType.positive,
              action: GestureDetector(
                child: const Icon(CupertinoIcons.info),
                onTap: () => {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ValueCard(
                  title: "Total de receitas",
                  value: 35000,
                  type: ValueCardType.positive,
                ),
                ValueCard(
                  title: "Total de despesas",
                  value: 35000,
                  type: ValueCardType.negative,
                ),
                ValueCard(
                  title: "Balanço previsto",
                  value: 35000,
                  type: ValueCardType.neutral,
                ),
              ],
            ),
            InfoCard(
              title: "Você tem 32 transações pendentes",
              info: const Icon(
                CupertinoIcons.info,
                size: 30,
              ),
              mainAction: CupertinoButton.filled(
                child: const Text("Verificar"),
                onPressed: () {},
              ),
            ),
            const AccountsCard(
              children: [
                BankCard(
                  bank: Bank.nubank,
                  balance: 420,
                  predict: 420,
                ),
                BankCard(
                  bank: Bank.itau,
                  balance: 420,
                  predict: 420,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
