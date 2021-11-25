import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/widgets/atoms/list_item_builder.dart';
import 'package:tip/src/foundation/design_system/widgets/molecules/transaction_list_tile.dart';

class TransactionsPreviewCard extends StatelessWidget {
  static const _maxItemsToShow = 3;

  final Text title;
  final Text subtitle;
  final ListItemBuilder<TransactionListTile> itemBuilder;
  final VoidCallback onPressSeeAll;

  const TransactionsPreviewCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.itemBuilder,
    required this.onPressSeeAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          title,
          subtitle,
          ListView.separated(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemBuilder: itemBuilder.builder,
            separatorBuilder: (context, index) => const Divider(),
            itemCount: min(_maxItemsToShow, itemBuilder.count),
          ),
          if (_isCardFull())
            MaterialButton(
              onPressed: onPressSeeAll,
              child: const Text('See All'),
            )
        ],
      ),
    );
  }

  bool _isCardFull() => itemBuilder.count > _maxItemsToShow;
}
