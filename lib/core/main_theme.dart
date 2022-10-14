import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoThemeData getMainThemeData() {
  return const CupertinoThemeData(
    primaryColor: CupertinoColors.activeBlue,
    scaffoldBackgroundColor: Color.fromRGBO(242, 242, 248, 1),
  );
}

ThemeData getThemeData() {
  const Color primaryColor = CupertinoColors.activeBlue;

  return ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color.fromRGBO(242, 242, 248, 1),
    cardTheme: CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
    ),
  );
}
