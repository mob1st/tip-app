// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as String,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      amount: (json['amount'] as num).toDouble(),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      valueDate: DateTime.parse(json['value_date'] as String),
      description: json['description'] as String,
      category: $enumDecode(_$TransactionCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'created_at': instance.createdAt.toIso8601String(),
      'amount': instance.amount,
      'type': _$TransactionTypeEnumMap[instance.type],
      'currency': _$CurrencyEnumMap[instance.currency],
      'value_date': instance.valueDate.toIso8601String(),
      'description': instance.description,
      'category': _$TransactionCategoryEnumMap[instance.category],
    };

const _$TransactionTypeEnumMap = {
  TransactionType.outflow: 'OUTFLOW',
  TransactionType.inflow: 'INFLOW',
};

const _$CurrencyEnumMap = {
  Currency.brl: 'BRL',
};

const _$TransactionCategoryEnumMap = {
  TransactionCategory.deposits: 'Deposits',
  TransactionCategory.homeAndLife: 'Home & Life',
  TransactionCategory.foodAndGroceries: 'Food & Groceries',
  TransactionCategory.onlinePlatformsAndLeisure: 'Online Platforms & Leisure',
  TransactionCategory.transportAndTravel: 'Transport & Travel',
  TransactionCategory.personalShopping: 'Personal Shopping',
  TransactionCategory.taxes: 'Taxes',
  TransactionCategory.withdrawalAtm: 'Withdrawal & ATM',
  TransactionCategory.creditsLoans: 'Credits & Loans',
  TransactionCategory.billsAndUtilities: 'Bills & Utilities',
  TransactionCategory.investmentsAndSavings: 'Investments & Savings',
  TransactionCategory.feesCharges: 'Fees & Charges',
  TransactionCategory.incomeAndPayments: 'Income & Payments',
  TransactionCategory.transfers: 'Transfers',
};

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      id: json['id'] as String,
      link: json['link'] as String,
      institution:
          Institution.fromJson(json['institution'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      collectedAt: DateTime.parse(json['collected_at'] as String),
      internalIdentification: json['internal_identification'] as String,
      name: json['name'] as String,
      number: json['number'] as String,
      agency: json['agency'] as String,
      categoty: $enumDecode(_$AccountCategotyEnumMap, json['categoty']),
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      balance: Balance.fromJson(json['balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'institution': instance.institution,
      'created_at': instance.createdAt.toIso8601String(),
      'collected_at': instance.collectedAt.toIso8601String(),
      'internal_identification': instance.internalIdentification,
      'name': instance.name,
      'number': instance.number,
      'agency': instance.agency,
      'categoty': _$AccountCategotyEnumMap[instance.categoty],
      'currency': _$CurrencyEnumMap[instance.currency],
      'balance': instance.balance,
    };

const _$AccountCategotyEnumMap = {
  AccountCategoty.checkingAccount: 'CHECKING_ACCOUNT',
  AccountCategoty.creditCard: 'CREDIT_CARD',
};

Balance _$BalanceFromJson(Map<String, dynamic> json) => Balance(
      current: (json['current'] as num).toDouble(),
      available: (json['available'] as num).toDouble(),
    );

Map<String, dynamic> _$BalanceToJson(Balance instance) => <String, dynamic>{
      'current': instance.current,
      'available': instance.available,
    };

Institution _$InstitutionFromJson(Map<String, dynamic> json) => Institution(
      name: json['name'] as String,
      type: $enumDecode(_$InstitutionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$InstitutionToJson(Institution instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$InstitutionTypeEnumMap[instance.type],
    };

const _$InstitutionTypeEnumMap = {
  InstitutionType.bank: 'bank',
};
