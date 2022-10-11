// ignore_for_file: prefer_const_constructors

import 'package:cashola/Pages/Home.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
        scaffoldBackgroundColor: Color.fromRGBO(242, 242, 248, 1),
      ),
      home: Home(),
    );
  }
}
