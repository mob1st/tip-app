// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'formattable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormattableTearOff {
  const _$FormattableTearOff();

  _Formattable<T> call<T>({required T value, required String formatted}) {
    return _Formattable<T>(
      value: value,
      formatted: formatted,
    );
  }
}

/// @nodoc
const $Formattable = _$FormattableTearOff();

/// @nodoc
mixin _$Formattable<T> {
  T get value => throw _privateConstructorUsedError;
  String get formatted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormattableCopyWith<T, Formattable<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormattableCopyWith<T, $Res> {
  factory $FormattableCopyWith(
          Formattable<T> value, $Res Function(Formattable<T>) then) =
      _$FormattableCopyWithImpl<T, $Res>;
  $Res call({T value, String formatted});
}

/// @nodoc
class _$FormattableCopyWithImpl<T, $Res>
    implements $FormattableCopyWith<T, $Res> {
  _$FormattableCopyWithImpl(this._value, this._then);

  final Formattable<T> _value;
  // ignore: unused_field
  final $Res Function(Formattable<T>) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? formatted = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      formatted: formatted == freezed
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FormattableCopyWith<T, $Res>
    implements $FormattableCopyWith<T, $Res> {
  factory _$FormattableCopyWith(
          _Formattable<T> value, $Res Function(_Formattable<T>) then) =
      __$FormattableCopyWithImpl<T, $Res>;
  @override
  $Res call({T value, String formatted});
}

/// @nodoc
class __$FormattableCopyWithImpl<T, $Res>
    extends _$FormattableCopyWithImpl<T, $Res>
    implements _$FormattableCopyWith<T, $Res> {
  __$FormattableCopyWithImpl(
      _Formattable<T> _value, $Res Function(_Formattable<T>) _then)
      : super(_value, (v) => _then(v as _Formattable<T>));

  @override
  _Formattable<T> get _value => super._value as _Formattable<T>;

  @override
  $Res call({
    Object? value = freezed,
    Object? formatted = freezed,
  }) {
    return _then(_Formattable<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      formatted: formatted == freezed
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Formattable<T> implements _Formattable<T> {
  _$_Formattable({required this.value, required this.formatted});

  @override
  final T value;
  @override
  final String formatted;

  @override
  String toString() {
    return 'Formattable<$T>(value: $value, formatted: $formatted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Formattable<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), formatted);

  @JsonKey(ignore: true)
  @override
  _$FormattableCopyWith<T, _Formattable<T>> get copyWith =>
      __$FormattableCopyWithImpl<T, _Formattable<T>>(this, _$identity);
}

abstract class _Formattable<T> implements Formattable<T> {
  factory _Formattable({required T value, required String formatted}) =
      _$_Formattable<T>;

  @override
  T get value;
  @override
  String get formatted;
  @override
  @JsonKey(ignore: true)
  _$FormattableCopyWith<T, _Formattable<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
