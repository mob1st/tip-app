import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tip/src/features/budgets/domain/budget_entitites.dart';
import 'package:tip/src/features/expanses/domain/entities.dart';
import 'package:tip/src/features/expanses/domain/repositories.dart';
import 'package:tip/src/features/expanses/domain/usecases.dart';

import 'expenses_test.mocks.dart';

@GenerateMocks([BudgetTransactionsRepository])
void main() {
  group(
    'get expenses use case:',
    () {
      test(
        'GIVEN more than 6 months '
        'WHEN get the expenses '
        'THEN an ArgumentError should be thrown',
        () {
          expect(
            () => mockUseCase(6),
            throwsArgumentError,
          );
        },
      );

      test(
        'GIVEN lass than 0 months '
        'WHEN get the expenses '
        'THEN an ArgumentError should be thrown',
        () {
          expect(
            () => mockUseCase(-1),
            throwsArgumentError,
          );
        },
      );

      test(
        'GIVEN a repository '
        ' AND 5 months in the past '
        'WHEN get the expenses '
        'THEN the expenses provided by the repository should be returned',
        () async {
          const ListEquality().equals(
            await mockUseCase(5),
            _budgetTransactionFixture(),
          );
        },
      );

      test(
          'GIVEN a repository '
          ' AND 0 months '
          'WHEN get the expenses '
          'THEN the expenses provided by the repository should be returned',
          () async {
        const ListEquality().equals(
          await mockUseCase(0),
          _budgetTransactionFixture(),
        );
      });
    },
  );
}

Future<List<BudgetExpanses>> mockUseCase(int repositoryArg) {
  final repository = MockBudgetTransactionsRepository();
  when(repository.getByPreviousMonth(fromToday: repositoryArg)).thenAnswer(
    (_) => Future(() => _budgetTransactionFixture()),
  );
  return getBudgetTransactions(repository, monthsFromToday: repositoryArg);
}

List<BudgetExpanses> _budgetTransactionFixture() => [
      BudgetExpanses(
        expanses: [
          Expanse(
            value: 18.0,
            name: 'bill',
            id: "any",
            date: DateTime.now(),
          ),
        ],
        budget: const Budget(
          id: "any",
          name: 'weekly',
          total: 20.0,
          costs: [
            Cost(
              id: 'any',
              name: 'bills',
              value: 20.0,
            ),
          ],
        ),
      ),
    ];
