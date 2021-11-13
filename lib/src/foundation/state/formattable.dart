import 'package:freezed_annotation/freezed_annotation.dart';
part 'formattable.freezed.dart';

@freezed
class Formattable<T> with _$Formattable<T> {
  factory Formattable({
    required T value,
    required String formatted,
  }) = _Formattable<T>;
}
