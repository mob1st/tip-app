import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/widgets/atoms/list_item_builder.dart';
import 'package:tip/src/foundation/design_system/widgets/molecules/transaction_list_tile.dart';

class TransactionsPreviewCard extends StatelessWidget {
  final Text title;
  final Text subtitle;
  final ListItemBuilder<TransactionListTile> itemBuilder;
  final VoidCallback? seeAllClick;

  const TransactionsPreviewCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.itemBuilder,
    this.seeAllClick,
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
            itemCount: itemBuilder.count,
          ),
        ],
      ),
    );
  }
}
