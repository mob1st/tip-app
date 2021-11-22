import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tip/src/features/budgets/data/local_budget_repository.dart';
import 'package:tip/src/features/expanses/data/local_budget_transactions_repository.dart';
import 'package:tip/src/features/expanses/domain/usecases.dart';
import 'package:tip/src/features/expanses/ui/home_pages.dart';
import 'package:tip/src/foundation/state/async_state.dart';

import 'home_state.dart';

final budgetRepositoryProvider = Provider((ref) {
  return LocalBudgetRepository();
});

final budgetExpansesRepositoryProvider = Provider((ref) {
  return LocalBudgetExpansesRepository(ref.read(budgetRepositoryProvider));
});

final getBudgetExpansesUseCaseProvider =
    Provider<GetBudgetExpansesUseCase>((ref) {
  return GetBudgetExpansesUseCase(ref.watch(budgetExpansesRepositoryProvider));
});

final toViewProvider = FutureProvider((ref) {
  final useCase = ref.watch(getBudgetExpansesUseCaseProvider);
  return useCase(monthsFromToday: 0).then(
    (value) => value.map((e) => e.toView()).toList(),
  );
});

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncWidget<List<BudgetExpansesView>>(
      asyncValue: ref.watch(toViewProvider),
      data: (context, data) => HomeSuccessPage(list: data),
    );
  }
}
