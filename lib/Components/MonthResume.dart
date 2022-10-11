import 'package:cashola/main.dart';
import 'package:cashola/themes/main_text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MonthResume extends StatelessWidget {
  final String revenuetotal, expensetotal, eomresult;
  const MonthResume(
      {super.key,
      required this.revenuetotal,
      required this.expensetotal,
      required this.eomresult});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Receitas Previstas
        Card(
            elevation: 13,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 16),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                child: Column(
                  children: [
                    Text(
                      "TOTAL DE RECEITAS",
                      style: MainTextTheme.miniTitleText(context),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "R\$${revenuetotal}",
                      style: MainTextTheme.miniBalanceTextGREEN(context),
                    ),
                  ],
                ),
              ),
            )),
        //Despesas Previstas
        Card(
            elevation: 13,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            // margin: EdgeInsets.only(left: 1.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                    child: Text(
                      "TOTAL DE DESPESAS",
                      style: MainTextTheme.miniTitleText(context),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "R\$${revenuetotal}",
                    style: MainTextTheme.miniBalanceTextRED(context),
                  ),
                ],
              ),
            )),
        //Balanço do mês
        Card(
          elevation: 13,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(right: 16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
              child: Column(
                children: [
                  Text(
                    "BALANÇO PREVISTO",
                    style: MainTextTheme.miniTitleText(context),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "R\$${eomresult}",
                    style: MainTextTheme.miniBalanceTextBLUE(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
