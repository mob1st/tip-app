/// The budgets types used by organize the user expanses
enum BudgetType {
  /// All weekly recurring expenses tipically called variable costs
  weekly,

  /// All weekly recurring expenses tipically called fixed costs
  monthly,

  /// All weekly recurring expenses tipically called seasonal costs
  ocassional
}

class Budget {
  final String name;
  final BudgetType type;
  final List<BudgetItem> items;

  Budget({
    required this.name,
    required this.type,
    required this.items,
  });
}

class BudgetItem {
  BudgetItem({
    required this.name,
    required this.value,
  });

  final String name;
  final double value;
}
