// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActionTearOff {
  const _$ActionTearOff();

  ErrorAction snackbarError(Object error, StackTrace? stackTrace) {
    return ErrorAction(
      error,
      stackTrace,
    );
  }

  DialError dialogError(Object error, StackTrace? stackTrace) {
    return DialError(
      error,
      stackTrace,
    );
  }

  Navigation navigation() {
    return Navigation();
  }
}

/// @nodoc
const $Action = _$ActionTearOff();

/// @nodoc
mixin _$Action {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace? stackTrace)
        snackbarError,
    required TResult Function(Object error, StackTrace? stackTrace) dialogError,
    required TResult Function() navigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object error, StackTrace? stackTrace)? snackbarError,
    TResult Function(Object error, StackTrace? stackTrace)? dialogError,
    TResult Function()? navigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace? stackTrace)? snackbarError,
    TResult Function(Object error, StackTrace? stackTrace)? dialogError,
    TResult Function()? navigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorAction value) snackbarError,
    required TResult Function(DialError value) dialogError,
    required TResult Function(Navigation value) navigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorAction value)? snackbarError,
    TResult Function(DialError value)? dialogError,
    TResult Function(Navigation value)? navigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorAction value)? snackbarError,
    TResult Function(DialError value)? dialogError,
    TResult Function(Navigation value)? navigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) then) =
      _$ActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActionCopyWithImpl<$Res> implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._value, this._then);

  final Action _value;
  // ignore: unused_field
  final $Res Function(Action) _then;
}

/// @nodoc
abstract class $ErrorActionCopyWith<$Res> {
  factory $ErrorActionCopyWith(
          ErrorAction value, $Res Function(ErrorAction) then) =
      _$ErrorActionCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class _$ErrorActionCopyWithImpl<$Res> extends _$ActionCopyWithImpl<$Res>
    implements $ErrorActionCopyWith<$Res> {
  _$ErrorActionCopyWithImpl(
      ErrorAction _value, $Res Function(ErrorAction) _then)
      : super(_value, (v) => _then(v as ErrorAction));

  @override
  ErrorAction get _value => super._value as ErrorAction;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(ErrorAction(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ErrorAction implements ErrorAction {
  _$ErrorAction(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Action.snackbarError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorAction &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $ErrorActionCopyWith<ErrorAction> get copyWith =>
      _$ErrorActionCopyWithImpl<ErrorAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace? stackTrace)
        snackbarError,
    required TResult Function(Object error, StackTrace? stackTrace) dialogError,
    required TResult Function() navigation,
  }) {
    return snackbarError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object error, StackTrace? stackTrace)? snackbarError,
    TResult Function(Object error, StackTrace? stackTrace)? dialogError,
    TResult Function()? navigation,
  }) {
    return snackbarError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace? stackTrace)? snackbarError,
    TResult Function(Object error, StackTrace? stackTrace)? dialogError,
    TResult Function()? navigation,
    required TResult orElse(),
  }) {
    if (snackbarError != null) {
      return snackbarError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorAction value) snackbarError,
    required TResult Function(DialError value) dialogError,
    required TResult Function(Navigation value) navigation,
  }) {
    return snackbarError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorAction value)? snackbarError,
    TResult Function(DialError value)? dialogError,
    TResult Function(Navigation value)? navigation,
  }) {
    return snackbarError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorAction value)? snackbarError,
    TResult Function(DialError value)? dialogError,
    TResult Function(Navigation value)? navigation,
    required TResult orElse(),
  }) {
    if (snackbarError != null) {
      return snackbarError(this);
    }
    return orElse();
  }
}

abstract class ErrorAction implements Action {
  factory ErrorAction(Object error, StackTrace? stackTrace) = _$ErrorAction;

  Object get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $ErrorActionCopyWith<ErrorAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialErrorCopyWith<$Res> {
  factory $DialErrorCopyWith(DialError value, $Res Function(DialError) then) =
      _$DialErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class _$DialErrorCopyWithImpl<$Res> extends _$ActionCopyWithImpl<$Res>
    implements $DialErrorCopyWith<$Res> {
  _$DialErrorCopyWithImpl(DialError _value, $Res Function(DialError) _then)
      : super(_value, (v) => _then(v as DialError));

  @override
  DialError get _value => super._value as DialError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(DialError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$DialError implements DialError {
  _$DialError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Action.dialogError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $DialErrorCopyWith<DialError> get copyWith =>
      _$DialErrorCopyWithImpl<DialError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace? stackTrace)
        snackbarError,
    required TResult Function(Object error, StackTrace? stackTrace) dialogError,
    required TResult Function() navigation,
  }) {
    return dialogError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object error, StackTrace? stackTrace)? snackbarError,
    TResult Function(Object error, StackTrace? stackTrace)? dialogError,
    TResult Function()? navigation,
  }) {
    return dialogError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace? stackTrace)? snackbarError,
    TResult Function(Object error, StackTrace? stackTrace)? dialogError,
    TResult Function()? navigation,
    required TResult orElse(),
  }) {
    if (dialogError != null) {
      return dialogError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorAction value) snackbarError,
    required TResult Function(DialError value) dialogError,
    required TResult Function(Navigation value) navigation,
  }) {
    return dialogError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorAction value)? snackbarError,
    TResult Function(DialError value)? dialogError,
    TResult Function(Navigation value)? navigation,
  }) {
    return dialogError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorAction value)? snackbarError,
    TResult Function(DialError value)? dialogError,
    TResult Function(Navigation value)? navigation,
    required TResult orElse(),
  }) {
    if (dialogError != null) {
      return dialogError(this);
    }
    return orElse();
  }
}

abstract class DialError implements Action {
  factory DialError(Object error, StackTrace? stackTrace) = _$DialError;

  Object get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $DialErrorCopyWith<DialError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationCopyWith<$Res> {
  factory $NavigationCopyWith(
          Navigation value, $Res Function(Navigation) then) =
      _$NavigationCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationCopyWithImpl<$Res> extends _$ActionCopyWithImpl<$Res>
    implements $NavigationCopyWith<$Res> {
  _$NavigationCopyWithImpl(Navigation _value, $Res Function(Navigation) _then)
      : super(_value, (v) => _then(v as Navigation));

  @override
  Navigation get _value => super._value as Navigation;
}

/// @nodoc

class _$Navigation implements Navigation {
  _$Navigation();

  @override
  String toString() {
    return 'Action.navigation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Navigation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace? stackTrace)
        snackbarError,
    required TResult Function(Object error, StackTrace? stackTrace) dialogError,
    required TResult Function() navigation,
  }) {
    return navigation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object error, StackTrace? stackTrace)? snackbarError,
    TResult Function(Object error, StackTrace? stackTrace)? dialogError,
    TResult Function()? navigation,
  }) {
    return navigation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace? stackTrace)? snackbarError,
    TResult Function(Object error, StackTrace? stackTrace)? dialogError,
    TResult Function()? navigation,
    required TResult orElse(),
  }) {
    if (navigation != null) {
      return navigation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorAction value) snackbarError,
    required TResult Function(DialError value) dialogError,
    required TResult Function(Navigation value) navigation,
  }) {
    return navigation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorAction value)? snackbarError,
    TResult Function(DialError value)? dialogError,
    TResult Function(Navigation value)? navigation,
  }) {
    return navigation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorAction value)? snackbarError,
    TResult Function(DialError value)? dialogError,
    TResult Function(Navigation value)? navigation,
    required TResult orElse(),
  }) {
    if (navigation != null) {
      return navigation(this);
    }
    return orElse();
  }
}

abstract class Navigation implements Action {
  factory Navigation() = _$Navigation;
}

/// @nodoc
class _$BudgetExpansesViewTearOff {
  const _$BudgetExpansesViewTearOff();

  _BudgetExpansesView call(
      {required BudgetView budget, required List<ExpanseView> expanses}) {
    return _BudgetExpansesView(
      budget: budget,
      expanses: expanses,
    );
  }
}

/// @nodoc
const $BudgetExpansesView = _$BudgetExpansesViewTearOff();

/// @nodoc
mixin _$BudgetExpansesView {
  BudgetView get budget => throw _privateConstructorUsedError;
  List<ExpanseView> get expanses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BudgetExpansesViewCopyWith<BudgetExpansesView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetExpansesViewCopyWith<$Res> {
  factory $BudgetExpansesViewCopyWith(
          BudgetExpansesView value, $Res Function(BudgetExpansesView) then) =
      _$BudgetExpansesViewCopyWithImpl<$Res>;
  $Res call({BudgetView budget, List<ExpanseView> expanses});

  $BudgetViewCopyWith<$Res> get budget;
}

/// @nodoc
class _$BudgetExpansesViewCopyWithImpl<$Res>
    implements $BudgetExpansesViewCopyWith<$Res> {
  _$BudgetExpansesViewCopyWithImpl(this._value, this._then);

  final BudgetExpansesView _value;
  // ignore: unused_field
  final $Res Function(BudgetExpansesView) _then;

  @override
  $Res call({
    Object? budget = freezed,
    Object? expanses = freezed,
  }) {
    return _then(_value.copyWith(
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as BudgetView,
      expanses: expanses == freezed
          ? _value.expanses
          : expanses // ignore: cast_nullable_to_non_nullable
              as List<ExpanseView>,
    ));
  }

  @override
  $BudgetViewCopyWith<$Res> get budget {
    return $BudgetViewCopyWith<$Res>(_value.budget, (value) {
      return _then(_value.copyWith(budget: value));
    });
  }
}

/// @nodoc
abstract class _$BudgetExpansesViewCopyWith<$Res>
    implements $BudgetExpansesViewCopyWith<$Res> {
  factory _$BudgetExpansesViewCopyWith(
          _BudgetExpansesView value, $Res Function(_BudgetExpansesView) then) =
      __$BudgetExpansesViewCopyWithImpl<$Res>;
  @override
  $Res call({BudgetView budget, List<ExpanseView> expanses});

  @override
  $BudgetViewCopyWith<$Res> get budget;
}

/// @nodoc
class __$BudgetExpansesViewCopyWithImpl<$Res>
    extends _$BudgetExpansesViewCopyWithImpl<$Res>
    implements _$BudgetExpansesViewCopyWith<$Res> {
  __$BudgetExpansesViewCopyWithImpl(
      _BudgetExpansesView _value, $Res Function(_BudgetExpansesView) _then)
      : super(_value, (v) => _then(v as _BudgetExpansesView));

  @override
  _BudgetExpansesView get _value => super._value as _BudgetExpansesView;

  @override
  $Res call({
    Object? budget = freezed,
    Object? expanses = freezed,
  }) {
    return _then(_BudgetExpansesView(
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as BudgetView,
      expanses: expanses == freezed
          ? _value.expanses
          : expanses // ignore: cast_nullable_to_non_nullable
              as List<ExpanseView>,
    ));
  }
}

/// @nodoc

class _$_BudgetExpansesView implements _BudgetExpansesView {
  _$_BudgetExpansesView({required this.budget, required this.expanses});

  @override
  final BudgetView budget;
  @override
  final List<ExpanseView> expanses;

  @override
  String toString() {
    return 'BudgetExpansesView(budget: $budget, expanses: $expanses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BudgetExpansesView &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other.expanses, expanses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, budget, const DeepCollectionEquality().hash(expanses));

  @JsonKey(ignore: true)
  @override
  _$BudgetExpansesViewCopyWith<_BudgetExpansesView> get copyWith =>
      __$BudgetExpansesViewCopyWithImpl<_BudgetExpansesView>(this, _$identity);
}

abstract class _BudgetExpansesView implements BudgetExpansesView {
  factory _BudgetExpansesView(
      {required BudgetView budget,
      required List<ExpanseView> expanses}) = _$_BudgetExpansesView;

  @override
  BudgetView get budget;
  @override
  List<ExpanseView> get expanses;
  @override
  @JsonKey(ignore: true)
  _$BudgetExpansesViewCopyWith<_BudgetExpansesView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BudgetViewTearOff {
  const _$BudgetViewTearOff();

  _BudgetView call(
      {required String id,
      required String name,
      required Formattable<double> total}) {
    return _BudgetView(
      id: id,
      name: name,
      total: total,
    );
  }
}

/// @nodoc
const $BudgetView = _$BudgetViewTearOff();

/// @nodoc
mixin _$BudgetView {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Formattable<double> get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BudgetViewCopyWith<BudgetView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetViewCopyWith<$Res> {
  factory $BudgetViewCopyWith(
          BudgetView value, $Res Function(BudgetView) then) =
      _$BudgetViewCopyWithImpl<$Res>;
  $Res call({String id, String name, Formattable<double> total});

  $FormattableCopyWith<double, $Res> get total;
}

/// @nodoc
class _$BudgetViewCopyWithImpl<$Res> implements $BudgetViewCopyWith<$Res> {
  _$BudgetViewCopyWithImpl(this._value, this._then);

  final BudgetView _value;
  // ignore: unused_field
  final $Res Function(BudgetView) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Formattable<double>,
    ));
  }

  @override
  $FormattableCopyWith<double, $Res> get total {
    return $FormattableCopyWith<double, $Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value));
    });
  }
}

/// @nodoc
abstract class _$BudgetViewCopyWith<$Res> implements $BudgetViewCopyWith<$Res> {
  factory _$BudgetViewCopyWith(
          _BudgetView value, $Res Function(_BudgetView) then) =
      __$BudgetViewCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, Formattable<double> total});

  @override
  $FormattableCopyWith<double, $Res> get total;
}

/// @nodoc
class __$BudgetViewCopyWithImpl<$Res> extends _$BudgetViewCopyWithImpl<$Res>
    implements _$BudgetViewCopyWith<$Res> {
  __$BudgetViewCopyWithImpl(
      _BudgetView _value, $Res Function(_BudgetView) _then)
      : super(_value, (v) => _then(v as _BudgetView));

  @override
  _BudgetView get _value => super._value as _BudgetView;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? total = freezed,
  }) {
    return _then(_BudgetView(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Formattable<double>,
    ));
  }
}

/// @nodoc

class _$_BudgetView implements _BudgetView {
  _$_BudgetView({required this.id, required this.name, required this.total});

  @override
  final String id;
  @override
  final String name;
  @override
  final Formattable<double> total;

  @override
  String toString() {
    return 'BudgetView(id: $id, name: $name, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BudgetView &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, total);

  @JsonKey(ignore: true)
  @override
  _$BudgetViewCopyWith<_BudgetView> get copyWith =>
      __$BudgetViewCopyWithImpl<_BudgetView>(this, _$identity);
}

abstract class _BudgetView implements BudgetView {
  factory _BudgetView(
      {required String id,
      required String name,
      required Formattable<double> total}) = _$_BudgetView;

  @override
  String get id;
  @override
  String get name;
  @override
  Formattable<double> get total;
  @override
  @JsonKey(ignore: true)
  _$BudgetViewCopyWith<_BudgetView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExpanseViewTearOff {
  const _$ExpanseViewTearOff();

  _ExpanseView call(
      {required String id,
      required Formattable<double> progress,
      required Color color,
      required Formattable<double> value,
      required Formattable<DateTime> date,
      required String name}) {
    return _ExpanseView(
      id: id,
      progress: progress,
      color: color,
      value: value,
      date: date,
      name: name,
    );
  }
}

/// @nodoc
const $ExpanseView = _$ExpanseViewTearOff();

/// @nodoc
mixin _$ExpanseView {
  String get id => throw _privateConstructorUsedError;
  Formattable<double> get progress => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  Formattable<double> get value => throw _privateConstructorUsedError;
  Formattable<DateTime> get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpanseViewCopyWith<ExpanseView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpanseViewCopyWith<$Res> {
  factory $ExpanseViewCopyWith(
          ExpanseView value, $Res Function(ExpanseView) then) =
      _$ExpanseViewCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Formattable<double> progress,
      Color color,
      Formattable<double> value,
      Formattable<DateTime> date,
      String name});

  $FormattableCopyWith<double, $Res> get progress;
  $FormattableCopyWith<double, $Res> get value;
  $FormattableCopyWith<DateTime, $Res> get date;
}

/// @nodoc
class _$ExpanseViewCopyWithImpl<$Res> implements $ExpanseViewCopyWith<$Res> {
  _$ExpanseViewCopyWithImpl(this._value, this._then);

  final ExpanseView _value;
  // ignore: unused_field
  final $Res Function(ExpanseView) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? color = freezed,
    Object? value = freezed,
    Object? date = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Formattable<double>,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Formattable<double>,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Formattable<DateTime>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $FormattableCopyWith<double, $Res> get progress {
    return $FormattableCopyWith<double, $Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value));
    });
  }

  @override
  $FormattableCopyWith<double, $Res> get value {
    return $FormattableCopyWith<double, $Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }

  @override
  $FormattableCopyWith<DateTime, $Res> get date {
    return $FormattableCopyWith<DateTime, $Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value));
    });
  }
}

/// @nodoc
abstract class _$ExpanseViewCopyWith<$Res>
    implements $ExpanseViewCopyWith<$Res> {
  factory _$ExpanseViewCopyWith(
          _ExpanseView value, $Res Function(_ExpanseView) then) =
      __$ExpanseViewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Formattable<double> progress,
      Color color,
      Formattable<double> value,
      Formattable<DateTime> date,
      String name});

  @override
  $FormattableCopyWith<double, $Res> get progress;
  @override
  $FormattableCopyWith<double, $Res> get value;
  @override
  $FormattableCopyWith<DateTime, $Res> get date;
}

/// @nodoc
class __$ExpanseViewCopyWithImpl<$Res> extends _$ExpanseViewCopyWithImpl<$Res>
    implements _$ExpanseViewCopyWith<$Res> {
  __$ExpanseViewCopyWithImpl(
      _ExpanseView _value, $Res Function(_ExpanseView) _then)
      : super(_value, (v) => _then(v as _ExpanseView));

  @override
  _ExpanseView get _value => super._value as _ExpanseView;

  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? color = freezed,
    Object? value = freezed,
    Object? date = freezed,
    Object? name = freezed,
  }) {
    return _then(_ExpanseView(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Formattable<double>,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Formattable<double>,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Formattable<DateTime>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExpanseView implements _ExpanseView {
  _$_ExpanseView(
      {required this.id,
      required this.progress,
      required this.color,
      required this.value,
      required this.date,
      required this.name});

  @override
  final String id;
  @override
  final Formattable<double> progress;
  @override
  final Color color;
  @override
  final Formattable<double> value;
  @override
  final Formattable<DateTime> date;
  @override
  final String name;

  @override
  String toString() {
    return 'ExpanseView(id: $id, progress: $progress, color: $color, value: $value, date: $date, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpanseView &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, progress,
      const DeepCollectionEquality().hash(color), value, date, name);

  @JsonKey(ignore: true)
  @override
  _$ExpanseViewCopyWith<_ExpanseView> get copyWith =>
      __$ExpanseViewCopyWithImpl<_ExpanseView>(this, _$identity);
}

abstract class _ExpanseView implements ExpanseView {
  factory _ExpanseView(
      {required String id,
      required Formattable<double> progress,
      required Color color,
      required Formattable<double> value,
      required Formattable<DateTime> date,
      required String name}) = _$_ExpanseView;

  @override
  String get id;
  @override
  Formattable<double> get progress;
  @override
  Color get color;
  @override
  Formattable<double> get value;
  @override
  Formattable<DateTime> get date;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ExpanseViewCopyWith<_ExpanseView> get copyWith =>
      throw _privateConstructorUsedError;
}
