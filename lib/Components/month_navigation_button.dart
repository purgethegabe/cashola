import 'package:flutter/cupertino.dart';

class MonthNavigationButton extends StatelessWidget {
  final String text;
  final bool next;
  const MonthNavigationButton({
    required this.text,
    this.next = false,
    super.key,
  });

  List<Widget> getChildren() {
    return [
      Icon(next ? CupertinoIcons.chevron_forward : CupertinoIcons.chevron_back),
      Text(text)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: next ? getChildren().reversed.toList() : getChildren(),
      ),
      onPressed: () {},
    );
  }
}
