import 'package:flutter/material.dart';

import '../enums/bank.dart';
import '../themes/main_text_theme.dart';

class BankCard extends StatelessWidget {
  final Bank bank;
  final double balance;
  final double predict;
  const BankCard({
    super.key,
    required this.bank,
    required this.balance,
    required this.predict,
  });

  String getBankIconAssetPath() {
    switch (bank) {
      case Bank.nubank:
        return "assets/Accounticons/nuicon.png";
      case Bank.itau:
        return "assets/Accounticons/itauicon.png";
      default:
        return "";
    }
  }

  String getBankName() {
    switch (bank) {
      case Bank.nubank:
        return "Nubank";
      case Bank.itau:
        return "Itaú";
      default:
        return "";
    }
  }

  Color getBankColor(BuildContext context) {
    switch (bank) {
      case Bank.nubank:
        return const Color.fromRGBO(109, 0, 198, 1);
      case Bank.itau:
        return const Color.fromRGBO(5, 53, 125, 1);
      default:
        return Theme.of(context).cardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        color: getBankColor(context),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(getBankIconAssetPath()),
                    height: 30,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      getBankName(),
                      style: MainTextTheme.accountandcardsText(context),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Saldo",
                    style: MainTextTheme.accountandcardsText(context),
                  ),
                  const Spacer(),
                  Text(
                    "R\$$balance",
                    style: MainTextTheme.accountandcardsNumber(context),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Previsto",
                    style: MainTextTheme.miniaccountandcardsText(context),
                  ),
                  const Spacer(),
                  Text(
                    "R\$$predict",
                    style: MainTextTheme.miniaccountandcardsNumber(context),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
