import 'package:flutter/material.dart';
import 'package:tip/src/features/expanses/ui/home_state.dart';

class HomeSuccessPage extends StatelessWidget {
  final List<BudgetExpansesView> list;

  const HomeSuccessPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
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
    throw UnimplementedError();
  }
}

class HomeEmptyPage extends StatelessWidget {
  const HomeEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('empty');
  }
}
