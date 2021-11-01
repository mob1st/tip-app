import 'dart:io';

import 'package:tip/src/features/expanses/domain/entities.dart';

/// Handles CRUD operations into Transactions related to budgets datasource.\
abstract class BudgetTransactionsRepository {
  /// Get all transactions into a current month.
  ///
  /// The paramter [fromToday] represents which month in the past should be
  /// loaded.
  Future<List<BudgetTransactions>> getByPreviousMonth({int fromToday});
}
