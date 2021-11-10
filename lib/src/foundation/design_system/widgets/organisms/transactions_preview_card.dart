import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/widgets/molecules/transaction_list_tile.dart';

class TransactionsPreviewCard extends StatelessWidget {
  final TransactionListTile first;
  final TransactionListTile? second;
  final TransactionListTile? third;
  final bool seeAll;
  const TransactionsPreviewCard({
    Key? key,
    required this.first,
    this.second,
    this.third,
    required this.seeAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> transactions = <Widget?>[
      first,
      second,
      third,
    ].whereType<Widget>().toList();
    if (seeAll) {
    } else if (transactions.isEmpty) {}
    return Column(
      children: transactions,
    );
  }
}
