import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_error.freezed.dart';
part 'price_error.g.dart';


@freezed
abstract class PriceError with _$PriceError {
  const factory PriceError({
    required Error error,
  }) = _PriceError;

  factory PriceError.fromJson(Map<String, dynamic> json) => _$PriceErrorFromJson(json);
}

@freezed
abstract class Error with _$Error {
  const factory Error({
    required String message,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
