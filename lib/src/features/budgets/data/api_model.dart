import 'package:json_annotation/json_annotation.dart';

part 'api_model.g.dart';

@JsonSerializable()
class Budget {
  final String id;
  final String name;
  final double total;
  final List<Cost> costs;

  const Budget({
    required this.id,
    required this.name,
    required this.total,
    required this.costs,
  });

  factory Budget.fromJson(Map<String, dynamic> json) => _$BudgetFromJson(json);

  Map<String, dynamic> toJson() => _$BudgetToJson(this);
}

@JsonSerializable()
class Cost {
  final String id;
  final String name;
  final double value;

  const Cost({
    required this.id,
    required this.name,
    required this.value,
  });

  factory Cost.fromJson(Map<String, dynamic> json) => _$CostFromJson(json);

  Map<String, dynamic> toJson() => _$CostToJson(this);
}
