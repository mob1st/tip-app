import 'package:equatable/equatable.dart';
import 'package:tip/src/features/budgets/domain/budget_entitites.dart';

/// a list of [Expanse] related to a [Budget] is the definition of
class BudgetExpanses extends Equatable {
  final List<Expanse> expanses;
  final Budget budget;

  @override
  List<Object?> get props => [
        expanses,
        budget,
      ];

  const BudgetExpanses({required this.expanses, required this.budget});
}

/// A financial transaction on user account
class Expanse extends Equatable {
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

  const Expanse({
    required this.value,
    required this.name,
    required this.id,
    required this.date,
  });
}
