import 'package:tip/src/features/budgets/domain/budget_entitites.dart';

abstract class BudgetRepository {
  Future<List<Budget>> getAll();
}
