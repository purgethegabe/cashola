// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/MonthNavigationButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Setembro"),
          leading: MonthNavigationButton(text: "Agosto"),
          trailing: MonthNavigationButton(
            text: "Outubro",
            next: true,
          ),
        ),
        child: ListView(
          children: [
            Container(
              child: Card(
                elevation: 2,
                child: Column(
                  children: [
                    Text("saldo"),
                    Text("N4D4"),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
