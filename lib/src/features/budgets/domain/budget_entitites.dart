import 'package:equatable/equatable.dart';

/// The budgets types used by organize the user expanses
enum BudgetType {
  /// All weekly recurring expenses tipically called variable costs
  weekly,

  /// All weekly recurring expenses tipically called fixed costs
  monthly,

  /// All weekly recurring expenses tipically called seasonal costs
  ocassional
}

class Budget extends Equatable {
  final String name;
  final BudgetType type;
  final List<BudgetItem> items;

  @override
  List<Object?> get props => [
        name,
        type,
        items,
      ];

  const Budget({
    required this.name,
    required this.type,
    required this.items,
  });
}

class BudgetItem extends Equatable {
  final String name;
  final double value;

  @override
  List<Object?> get props => [
        name,
        value,
      ];

  BudgetItem({
    required this.name,
    required this.value,
  });
}
