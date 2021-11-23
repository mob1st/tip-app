import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tip/src/features/expanses/domain/entities.dart';
import 'package:tip/src/foundation/state/formattable.dart';
part 'home_state.freezed.dart';

@freezed
class Action with _$Action {
  factory Action.snackbarError(Object error, StackTrace? stackTrace) =
      ErrorAction;
  factory Action.dialogError(Object error, StackTrace? stackTrace) = DialError;
  factory Action.navigation() = Navigation;
}

@freezed
class BudgetExpansesView with _$BudgetExpansesView {
  factory BudgetExpansesView({
    required BudgetView budget,
    required List<ExpanseView> expanses,
  }) = _BudgetExpansesView;
}

@freezed
class BudgetView with _$BudgetView {
  factory BudgetView({
    required String id,
    required String name,
    required Formattable<double> total,
  }) = _BudgetView;
}

@freezed
class ExpanseView with _$ExpanseView {
  factory ExpanseView({
    required String id,
    required Formattable<double> progress,
    required Color color,
    required Formattable<double> value,
    required Formattable<DateTime> date,
    required String name,
  }) = _ExpanseView;
}

extension Mapper on BudgetExpanses {
  BudgetExpansesView toView() => BudgetExpansesView(
        budget: BudgetView(
          id: budget.id,
          name: budget.name,
          total: Formattable(
            value: budget.total,
            formatted: budget.total.toString(),
          ),
        ),
        expanses: expanses
            .map(
              (e) => ExpanseView(
                id: e.id,
                progress: Formattable(
                  value: budget.total / e.value,
                  formatted: (budget.total / e.value).toString(),
                ),
                value: Formattable(
                  value: e.value,
                  formatted: e.value.toString(),
                ),
                color: Colors.amber,
                date: Formattable(
                  value: e.date,
                  formatted: e.date.toString(),
                ),
                name: e.name,
              ),
            )
            .toList(),
      );
}
