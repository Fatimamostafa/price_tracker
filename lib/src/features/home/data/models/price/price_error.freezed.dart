// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceError _$PriceErrorFromJson(Map<String, dynamic> json) {
  return _PriceError.fromJson(json);
}

/// @nodoc
mixin _$PriceError {
  Error get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceErrorCopyWith<PriceError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceErrorCopyWith<$Res> {
  factory $PriceErrorCopyWith(
          PriceError value, $Res Function(PriceError) then) =
      _$PriceErrorCopyWithImpl<$Res>;
  $Res call({Error error});

  $ErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$PriceErrorCopyWithImpl<$Res> implements $PriceErrorCopyWith<$Res> {
  _$PriceErrorCopyWithImpl(this._value, this._then);

  final PriceError _value;
  // ignore: unused_field
  final $Res Function(PriceError) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }

  @override
  $ErrorCopyWith<$Res> get error {
    return $ErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$$_PriceErrorCopyWith<$Res>
    implements $PriceErrorCopyWith<$Res> {
  factory _$$_PriceErrorCopyWith(
          _$_PriceError value, $Res Function(_$_PriceError) then) =
      __$$_PriceErrorCopyWithImpl<$Res>;
  @override
  $Res call({Error error});

  @override
  $ErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_PriceErrorCopyWithImpl<$Res> extends _$PriceErrorCopyWithImpl<$Res>
    implements _$$_PriceErrorCopyWith<$Res> {
  __$$_PriceErrorCopyWithImpl(
      _$_PriceError _value, $Res Function(_$_PriceError) _then)
      : super(_value, (v) => _then(v as _$_PriceError));

  @override
  _$_PriceError get _value => super._value as _$_PriceError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_PriceError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceError implements _PriceError {
  const _$_PriceError({required this.error});

  factory _$_PriceError.fromJson(Map<String, dynamic> json) =>
      _$$_PriceErrorFromJson(json);

  @override
  final Error error;

  @override
  String toString() {
    return 'PriceError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_PriceErrorCopyWith<_$_PriceError> get copyWith =>
      __$$_PriceErrorCopyWithImpl<_$_PriceError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceErrorToJson(
      this,
    );
  }
}

abstract class _PriceError implements PriceError {
  const factory _PriceError({required final Error error}) = _$_PriceError;

  factory _PriceError.fromJson(Map<String, dynamic> json) =
      _$_PriceError.fromJson;

  @override
  Error get error;
  @override
  @JsonKey(ignore: true)
  _$$_PriceErrorCopyWith<_$_PriceError> get copyWith =>
      throw _privateConstructorUsedError;
}

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
mixin _$Error {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  final Error _value;
  // ignore: unused_field
  final $Res Function(Error) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Error implements _Error {
  const _$_Error({required this.message});

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'Error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorToJson(
      this,
    );
  }
}

abstract class _Error implements Error {
  const factory _Error({required final String message}) = _$_Error;

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
