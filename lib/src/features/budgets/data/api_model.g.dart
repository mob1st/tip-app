// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Budget _$BudgetFromJson(Map<String, dynamic> json) => Budget(
      id: json['id'] as String,
      name: json['name'] as String,
      total: (json['total'] as num).toDouble(),
      costs: (json['costs'] as List<dynamic>)
          .map((e) => Cost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BudgetToJson(Budget instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'total': instance.total,
      'costs': instance.costs,
    };

Cost _$CostFromJson(Map<String, dynamic> json) => Cost(
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$CostToJson(Cost instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
