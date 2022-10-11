import 'package:cashola/themes/main_text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountsCard extends StatelessWidget {
  const AccountsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 13,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Contas",
                  style: MainTextTheme.titleText(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(CupertinoIcons.plus),
              )
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 13,
                  shadowColor: Colors.transparent,
                  color: Color.fromRGBO(109, 0, 198, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(16, 8, 0, 12),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image:
                                  AssetImage('assets/Accounticons/nuicon.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                            child: Text(
                              "Nubank",
                              style: MainTextTheme.accountandcardsText(context),
                            ),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
                Card(
                  elevation: 13,
                  shadowColor: Colors.transparent,
                  color: Color.fromRGBO(109, 0, 198, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 12),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image:
                                  AssetImage('assets/Accounticons/nuicon.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                            child: Text(
                              "Nubank",
                              style: MainTextTheme.accountandcardsText(context),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
