import 'package:tip/src/features/budgets/domain/budget_entitites.dart';
import 'package:tip/src/features/expanses/data/api_model.dart';
import 'package:tip/src/features/expanses/domain/entities.dart';

List<BudgetExpanses> createBudgetExpanses(
  List<Transaction> transactions,
  List<Budget> budgets,
) {
  final budgetsTransactions = budgets
      .map(
        (budget) => BudgetExpanses(
          expanses: List.empty(growable: true),
          budget: budget,
        ),
      )
      .toList();
  var isPreviewFilled = false;
  var transactionsIndex = 0;
  while (!isPreviewFilled && transactions.length > transactionsIndex) {
    final transaction = transactions[transactionsIndex];
    final expanse = transaction.toExpanse();
    final index = transaction.category.toBudget().index;
    final currentBudgetExpanses = budgetsTransactions[index].expanses;
    if (currentBudgetExpanses.length < 4) {
      currentBudgetExpanses.add(expanse);
    }
    isPreviewFilled = budgetsTransactions[0].expanses.length == 4 &&
        budgetsTransactions[1].expanses.length == 4 &&
        budgetsTransactions[2].expanses.length == 4;
    transactionsIndex++;
  }
  return budgetsTransactions;
}

extension TransactionToExpanse on Transaction {
  Expanse toExpanse() => Expanse(
        value: amount,
        name: description,
        id: id,
        date: createdAt,
      );
}

extension CategoryToBudget on TransactionCategory {
  BudgetType toBudget() {
    switch (this) {
      case TransactionCategory.deposits:
        return BudgetType.monthly;
      case TransactionCategory.homeAndLife:
        return BudgetType.ocassional;
      case TransactionCategory.foodAndGroceries:
        return BudgetType.weekly;
      case TransactionCategory.onlinePlatformsAndLeisure:
        return BudgetType.monthly;
      case TransactionCategory.transportAndTravel:
        return BudgetType.weekly;
      case TransactionCategory.personalShopping:
        return BudgetType.ocassional;
      case TransactionCategory.taxes:
        return BudgetType.ocassional;
      case TransactionCategory.withdrawalAtm:
        return BudgetType.monthly;
      case TransactionCategory.creditsLoans:
        return BudgetType.monthly;
      case TransactionCategory.billsAndUtilities:
        return BudgetType.monthly;
      case TransactionCategory.investmentsAndSavings:
        return BudgetType.monthly;
      case TransactionCategory.feesCharges:
        return BudgetType.monthly;
      case TransactionCategory.incomeAndPayments:
        return BudgetType.monthly;
      case TransactionCategory.transfers:
        return BudgetType.ocassional;
    }
  }
}

extension BudgetIndex on BudgetType {
  int index() {
    switch (this) {
      case BudgetType.weekly:
        return 0;
      case BudgetType.monthly:
        return 1;
      case BudgetType.ocassional:
        return 2;
    }
  }
}
