import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTextTheme {
  static TextStyle balanceText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        color: CupertinoColors.activeGreen,
        fontSize: 38,
        fontFamily: "SF Mono");
  }

  static TextStyle miniTitleText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        color: CupertinoColors.systemGrey2,
        fontSize: 10,
        fontFamily: "SF Pro",
        fontWeight: FontWeight.bold);
  }

  static TextStyle miniBalanceTextGREEN(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 19,
        fontFamily: "SF Mono",
        fontWeight: FontWeight.bold,
        color: CupertinoColors.activeGreen);
  }

  static TextStyle miniBalanceTextBLUE(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 19,
        fontFamily: "SF Mono",
        fontWeight: FontWeight.bold,
        color: CupertinoColors.activeBlue);
  }

  static TextStyle miniBalanceTextRED(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 19,
        fontFamily: "SF Mono",
        fontWeight: FontWeight.bold,
        color: CupertinoColors.systemRed);
  }

  static TextStyle miniBalanceTextCONTASWHITE(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 19,
        fontFamily: "SF Mono",
        fontWeight: FontWeight.bold,
        color: CupertinoColors.white);
  }

  static TextStyle bigBodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 17,
        fontFamily: "SF Pro",
        fontWeight: FontWeight.w600,
        color: CupertinoColors.black);
  }

  static TextStyle buttonText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 16,
        fontFamily: "SF Pro",
        fontWeight: FontWeight.w600,
        color: CupertinoColors.white);
  }

  static TextStyle titleText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 19,
        fontFamily: "SF Pro",
        fontWeight: FontWeight.bold,
        color: CupertinoColors.black);
  }

  static TextStyle accountandcardsText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 14,
        fontFamily: "SF Pro",
        fontWeight: FontWeight.bold,
        color: CupertinoColors.white);
  }

  static TextStyle accountandcardsNumber(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 16,
        fontFamily: "SF Mono",
        fontWeight: FontWeight.normal,
        color: CupertinoColors.white);
  }

  static TextStyle miniaccountandcardsText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 11,
        fontFamily: "SF Pro",
        fontWeight: FontWeight.bold,
        color: CupertinoColors.white);
  }

  static TextStyle miniaccountandcardsNumber(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 11,
        fontFamily: "SF Mono",
        fontWeight: FontWeight.normal,
        color: CupertinoColors.white);
  }
}
