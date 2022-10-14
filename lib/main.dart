// ignore_for_file: prefer_const_constructors

import 'package:cashola/Pages/home.dart';
import 'package:cashola/core/main_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cashola',
      theme: getThemeData(),
      home: Home(),
    );
  }
}
