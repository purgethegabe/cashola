import 'package:cashola/themes/main_text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PendingTrans extends StatelessWidget {
  const PendingTrans({super.key});

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
            Text(
              "Você tem 32 transações pendentes",
              style: MainTextTheme.bigBodyText(context),
            ),
            SizedBox(height: 10),
            Icon(CupertinoIcons.info_circle, size: 30),
            SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              elevation: 13,
              shadowColor: Colors.transparent,
              color: CupertinoColors.activeBlue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 11, 18, 11),
                child: Text(
                  "Verificar",
                  style: MainTextTheme.buttonText(context),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
