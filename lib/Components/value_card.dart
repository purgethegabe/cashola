import 'package:cashola/enums/value_card_type.dart';
import 'package:flutter/material.dart';

import '../themes/main_text_theme.dart';

class ValueCard extends StatelessWidget {
  final String title;
  final double value;
  final ValueCardType type;
  final Widget? action;
  const ValueCard({
    super.key,
    required this.title,
    required this.value,
    this.type = ValueCardType.neutral,
    this.action,
  });

  TextStyle getTextStyle(BuildContext context) {
    switch (type) {
      case ValueCardType.positive:
        return MainTextTheme.miniBalanceTextGREEN(context);
      case ValueCardType.negative:
        return MainTextTheme.miniBalanceTextRED(context);
      default:
        return MainTextTheme.miniBalanceTextBLUE(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: action != null
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.center,
                children: [
                  Text(
                    title.toUpperCase(),
                    semanticsLabel: title,
                    style: MainTextTheme.miniTitleText(context),
                  ),
                  action ?? const SizedBox()
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "R\$${value.toStringAsFixed(2)}",
                overflow: TextOverflow.ellipsis,
                style: getTextStyle(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
