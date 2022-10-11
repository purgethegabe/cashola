import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTextTheme {
  static TextStyle balanceText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          color: CupertinoColors.activeOrange,
        );
  }
}
