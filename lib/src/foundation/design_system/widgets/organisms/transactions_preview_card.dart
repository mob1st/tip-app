import 'package:flutter/material.dart';

class TransactionsPreviewCard extends StatelessWidget {
  final Widget? first;
  final Widget? second;
  final Widget? third;
  final bool seeAll;
  const TransactionsPreviewCard({
    Key? key,
    this.first,
    this.second,
    this.third,
    required this.seeAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> transactions =
        <Widget?>[first, second, third].whereType<Widget>().toList();
    if (seeAll) {
    } else if (transactions.isEmpty) {}
    return Column(
      children: transactions,
    );
  }
}
