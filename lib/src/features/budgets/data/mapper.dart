import 'package:tip/src/features/budgets/domain/budget_entitites.dart';
import 'package:tip/src/features/budgets/data/api_model.dart' as api;

extension on api.Budget {
  Budget toDomain() => Budget(
        name: name,
        costs: costs
            .map(
              (e) => e.toDomain(),
            )
            .toList(),
      );
}

extension on api.Cost {
  Cost toDomain() => Cost(name: name, value: value);
}
