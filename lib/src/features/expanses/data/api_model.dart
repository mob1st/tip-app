import 'package:json_annotation/json_annotation.dart';
part 'api_model.g.dart';

@JsonSerializable()
class Transaction {
  final String id;
  final Account account;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final double amount;
  final TransactionType type;
  final Currency currency;
  @JsonKey(name: 'value_date')
  final DateTime valueDate;
  final String description;
  final TransactionCategory category;

  const Transaction({
    required this.id,
    required this.account,
    required this.createdAt,
    required this.amount,
    required this.type,
    required this.currency,
    required this.valueDate,
    required this.description,
    required this.category,
  });
  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}

@JsonSerializable()
class Account {
  final String id;
  final String link;
  final Institution institution;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'collected_at')
  final DateTime collectedAt;
  @JsonKey(name: 'internal_identification')
  final String internalIdentification;
  final String name;
  final String number;
  final String agency;
  final AccountCategoty category;
  final Currency currency;
  final Balance balance;

  const Account({
    required this.id,
    required this.link,
    required this.institution,
    required this.createdAt,
    required this.collectedAt,
    required this.internalIdentification,
    required this.name,
    required this.number,
    required this.agency,
    required this.category,
    required this.currency,
    required this.balance,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable()
class Balance {
  final double current;
  final double available;

  const Balance({
    required this.current,
    required this.available,
  });

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);

  Map<String, dynamic> toJson() => _$BalanceToJson(this);
}

@JsonSerializable()
class Institution {
  final String name;
  final InstitutionType type;

  const Institution({
    required this.name,
    required this.type,
  });

  factory Institution.fromJson(Map<String, dynamic> json) =>
      _$InstitutionFromJson(json);

  Map<String, dynamic> toJson() => _$InstitutionToJson(this);
}

enum InstitutionType { bank }
enum AccountCategoty {
  @JsonValue('CHECKING_ACCOUNT')
  checkingAccount,
  @JsonValue('CREDIT_CARD')
  creditCard
}

enum Currency {
  @JsonValue('BRL')
  brl
}

enum TransactionType {
  @JsonValue('OUTFLOW')
  outflow,
  @JsonValue('INFLOW')
  inflow
}

enum TransactionCategory {
  @JsonValue('Deposits')
  deposits,
  @JsonValue('Home & Life')
  homeAndLife,
  @JsonValue('Food & Groceries')
  foodAndGroceries,
  @JsonValue('Online Platforms & Leisure')
  onlinePlatformsAndLeisure,
  @JsonValue('Transport & Travel')
  transportAndTravel,
  @JsonValue('Personal Shopping')
  personalShopping,
  @JsonValue('Taxes')
  taxes,
  @JsonValue('Withdrawal & ATM')
  withdrawalAtm,
  @JsonValue('Credits & Loans')
  creditsLoans,
  @JsonValue('Bills & Utilities')
  billsAndUtilities,
  @JsonValue('Investments & Savings')
  investmentsAndSavings,
  @JsonValue('Fees & Charges')
  feesCharges,
  @JsonValue('Income & Payments')
  incomeAndPayments,
  @JsonValue('Transfers')
  transfers,
}
