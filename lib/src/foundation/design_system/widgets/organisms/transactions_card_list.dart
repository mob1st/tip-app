import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/widgets/atoms/list_item_builder.dart';
import 'package:tip/src/foundation/design_system/widgets/organisms/transactions_preview_card.dart';

class TransactionsCardList extends StatelessWidget {
  final ListItemBuilder<TransactionsPreviewCard> itemBuilder;

  const TransactionsCardList({Key? key, required this.itemBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: itemBuilder.builder,
      separatorBuilder: (context, _) => const SizedBox(height: 8),
      itemCount: itemBuilder.count,
    );
  }
}
