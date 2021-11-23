import 'package:flutter/material.dart';
import 'package:tip/src/features/expanses/ui/home_state.dart';
import 'package:tip/src/foundation/design_system/widgets/atoms/list_item_builder.dart';
import 'package:tip/src/foundation/design_system/widgets/atoms/vertical_progress.dart';
import 'package:tip/src/foundation/design_system/widgets/molecules/transaction_list_tile.dart';
import 'package:tip/src/foundation/design_system/widgets/organisms/transactions_card_list.dart';
import 'package:tip/src/foundation/design_system/widgets/organisms/transactions_preview_card.dart';

class HomeSuccessPage extends StatelessWidget {
  final List<BudgetExpansesView> list;

  const HomeSuccessPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (list.isNotEmpty) {
      return HomeListPage(list: list);
    } else {
      return const HomeEmptyPage();
    }
  }
}

class HomeListPage extends StatelessWidget {
  final List<BudgetExpansesView> list;

  const HomeListPage({Key? key, required this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TransactionsCardList(
      itemBuilder: ListItemBuilder(
        builder: (context, index) {
          final budget = list[index].budget;
          return TransactionsPreviewCard(
            title: Text(budget.name),
            subtitle: Text(budget.total.formatted),
            itemBuilder: ListItemBuilder(
              builder: (innerContext, innerIndex) {
                final expanse = list[index].expanses[innerIndex];
                return TransactionListTile(
                  progress: VerticalProgress(
                    color: Colors.amber,
                    value: expanse.progress.value,
                  ),
                  title: Text(expanse.name),
                  subtitle: Text(expanse.date.formatted),
                  detail: Text(expanse.value.formatted),
                );
              },
              count: list[index].expanses.length,
            ),
          );
        },
        count: list.length,
      ),
    );
  }
}

class HomeEmptyPage extends StatelessWidget {
  const HomeEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('empty');
  }
}
