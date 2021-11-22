import 'dart:convert';

import 'package:tip/src/features/budgets/domain/budget_entitites.dart';
import 'package:tip/src/features/budgets/domain/budget_repository.dart';
import 'package:tip/src/features/expanses/data/budget_expanse_creator.dart';
import 'package:tip/src/features/expanses/domain/entities.dart';
import 'package:tip/src/features/expanses/domain/repositories.dart';
import 'package:tip/src/features/expanses/data/api_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class LocalBudgetExpansesRepository implements BudgetTransactionsRepository {
  final BudgetRepository _budgetRepository;

  LocalBudgetExpansesRepository(this._budgetRepository);

  @override
  Future<List<BudgetExpanses>> getByPreviousMonth({
    required int fromToday,
  }) async {
    final transactionsFuture = _loadLocalJson();
    final budgetsFuture = _budgetRepository.getAll();
    final responses =
        await Future.wait([transactionsFuture, budgetsFuture]).then(
      (responses) {
        final transactions = responses[0] as List<Transaction>;
        final budgets = responses[1] as List<Budget>;
        return createBudgetExpanses(transactions, budgets);
      },
    );
    return responses.toList();
  }

  Future<List<Transaction>> _loadLocalJson() async {
    final rawJson =
        await rootBundle.loadString('assets/json/transactions.json');
    final iterable = json.decode(rawJson);
    return List.from(
        iterable.map((transaction) => Transaction.fromJson(transaction)));
  }
}
