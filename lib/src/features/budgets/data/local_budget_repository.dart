import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:tip/src/features/budgets/data/api_model.dart' as api;
import 'package:tip/src/features/budgets/data/mapper.dart';
import 'package:tip/src/features/budgets/domain/budget_entitites.dart';
import 'package:tip/src/features/budgets/domain/budget_repository.dart';

class LocalBudgetRepository implements BudgetRepository {
  @override
  Future<List<Budget>> getAll() async {
    final apiBudget = await _loadLocalJson();
    return apiBudget.map((e) {
      return e.toDomain();
    }).toList();
  }

  Future<List<api.Budget>> _loadLocalJson() async {
    final rawJson = await rootBundle.loadString('assets/json/budgets.json');
    final iterable = json.decode(rawJson);
    return List<api.Budget>.from(
      iterable.map(
        (budget) => api.Budget.fromJson(budget),
      ),
    );
  }
}
