import 'package:equatable/equatable.dart';

/// The budgets types used by organize the user expanses
enum BudgetType {
  /// All weekly recurring expenses tipically called variable costs
  weekly,

  /// All weekly recurring expenses tipically called fixed costs
  monthly,

  /// All weekly recurring expenses tipically called seasonal costs
  ocassional,
}

class Budget extends Equatable {
  final String id;
  final String name;
  final double total;
  final List<Cost> costs;

  @override
  List<Object?> get props => [
        name,
        costs,
      ];

  const Budget({
    required this.id,
    required this.name,
    required this.total,
    required this.costs,
  });
}

class Cost extends Equatable {
  final String id;
  final String name;
  final double value;

  @override
  List<Object?> get props => [
        name,
        value,
      ];

  const Cost({
    required this.id,
    required this.name,
    required this.value,
  });
}
