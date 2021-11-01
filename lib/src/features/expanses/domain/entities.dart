import 'package:tip/src/features/budgets/domain/budget_entitites.dart';

/// a list of [Transaction] related to a [Budget] is the definition of
class BudgetTransactions {
  final List<Transaction> transactions;
  final Budget budget;

  BudgetTransactions({required this.transactions, required this.budget});
}

/// A financial transaction on user account
class Transaction {
  Transaction({
    required this.value,
    required this.name,
    required this.id,
    required this.date,
  });

  final double value;
  final String name;
  final String id;
  final DateTime date;
}
