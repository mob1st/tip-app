import 'package:flutter/material.dart';
import 'package:tip/src/features/expanses/ui/home_state.dart';
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
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemCount: list.length,
      itemBuilder: (context, index) => TransactionsPreviewCard(
        title: Text(list[index].budget.name),
        subtitle: Text(list[index].budget.total.toString()),
        children: ListView.separated(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, innerIndex) =>
              Text(list[index].expanses[innerIndex].name),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: list[index].expanses.length,
        ),
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
