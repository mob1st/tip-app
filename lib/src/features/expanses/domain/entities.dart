import 'package:equatable/equatable.dart';
import 'package:tip/src/features/budgets/domain/budget_entitites.dart';

/// a list of [Transaction] related to a [Budget] is the definition of
class BudgetTransactions extends Equatable {
  final List<Transaction> transactions;
  final Budget budget;

  @override
  List<Object?> get props => [
        transactions,
        budget,
      ];

  const BudgetTransactions({required this.transactions, required this.budget});
}

/// A financial transaction on user account
class Transaction extends Equatable {
  final double value;
  final String name;
  final String id;
  final DateTime date;

  @override
  List<Object?> get props => [
        value,
        name,
        id,
        date,
      ];

  const Transaction({
    required this.value,
    required this.name,
    required this.id,
    required this.date,
  });
}
