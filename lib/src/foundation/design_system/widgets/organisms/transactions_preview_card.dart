import 'package:flutter/material.dart';

class TransactionsPreviewCard extends StatelessWidget {
  final Text title;
  final Text subtitle;
  final ListView children;
  final MaterialButton? seeAll;

  const TransactionsPreviewCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.children,
    this.seeAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [],
      ),
    );
  }
}
