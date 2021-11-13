import 'package:tip/src/features/expanses/domain/entities.dart';
import 'package:tip/src/features/expanses/domain/repositories.dart';

/// Get the transactions related to the user budgets to compares
/// expanses X budgets.
///
/// Throws [ArgumentError] if [fromToday] is < 0 or > 5.
/// Use 0 if the current month is the required.
class GetBudgetExpansesUseCase {
  final BudgetTransactionsRepository _repository;

  GetBudgetExpansesUseCase(this._repository);

  Future<List<BudgetExpanses>> call({
    required int monthsFromToday,
  }) {
    if (monthsFromToday < 0) {
      final error = ArgumentError.value(
        monthsFromToday,
        'monthsFromToday',
        'Lass than zero not allowed.',
      );
      return Future.error(error);
    } else if (monthsFromToday > 5) {
      final error = ArgumentError.value(
        monthsFromToday,
        'monthsFromToday',
        'Expenses older than 6 months from now are not allowed',
      );
      return Future.error(error);
    }
    return _repository.getByPreviousMonth(fromToday: monthsFromToday);
  }
}

Future<List<BudgetExpanses>> getBudgetTransactions(
  BudgetTransactionsRepository repository, {
  required int monthsFromToday,
}) {
  if (monthsFromToday < 0) {
    throw ArgumentError.value(
      monthsFromToday,
      'monthsFromToday',
      'Lass than zero not allowed.',
    );
  } else if (monthsFromToday > 5) {
    throw ArgumentError.value(
      monthsFromToday,
      'monthsFromToday',
      'Expenses older than 6 months from now are not allowed',
    );
  }

  return repository.getByPreviousMonth(fromToday: monthsFromToday);
}
