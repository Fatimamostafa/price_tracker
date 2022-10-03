// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'active_symbols.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActiveSymbols _$ActiveSymbolsFromJson(Map<String, dynamic> json) {
  return _ActiveSymbols.fromJson(json);
}

/// @nodoc
mixin _$ActiveSymbols {
  List<ActiveSymbol> get active_symbols => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveSymbolsCopyWith<ActiveSymbols> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveSymbolsCopyWith<$Res> {
  factory $ActiveSymbolsCopyWith(
          ActiveSymbols value, $Res Function(ActiveSymbols) then) =
      _$ActiveSymbolsCopyWithImpl<$Res>;
  $Res call({List<ActiveSymbol> active_symbols});
}

/// @nodoc
class _$ActiveSymbolsCopyWithImpl<$Res>
    implements $ActiveSymbolsCopyWith<$Res> {
  _$ActiveSymbolsCopyWithImpl(this._value, this._then);

  final ActiveSymbols _value;
  // ignore: unused_field
  final $Res Function(ActiveSymbols) _then;

  @override
  $Res call({
    Object? active_symbols = freezed,
  }) {
    return _then(_value.copyWith(
      active_symbols: active_symbols == freezed
          ? _value.active_symbols
          : active_symbols // ignore: cast_nullable_to_non_nullable
              as List<ActiveSymbol>,
    ));
  }
}

/// @nodoc
abstract class _$$_ActiveSymbolsCopyWith<$Res>
    implements $ActiveSymbolsCopyWith<$Res> {
  factory _$$_ActiveSymbolsCopyWith(
          _$_ActiveSymbols value, $Res Function(_$_ActiveSymbols) then) =
      __$$_ActiveSymbolsCopyWithImpl<$Res>;
  @override
  $Res call({List<ActiveSymbol> active_symbols});
}

/// @nodoc
class __$$_ActiveSymbolsCopyWithImpl<$Res>
    extends _$ActiveSymbolsCopyWithImpl<$Res>
    implements _$$_ActiveSymbolsCopyWith<$Res> {
  __$$_ActiveSymbolsCopyWithImpl(
      _$_ActiveSymbols _value, $Res Function(_$_ActiveSymbols) _then)
      : super(_value, (v) => _then(v as _$_ActiveSymbols));

  @override
  _$_ActiveSymbols get _value => super._value as _$_ActiveSymbols;

  @override
  $Res call({
    Object? active_symbols = freezed,
  }) {
    return _then(_$_ActiveSymbols(
      active_symbols: active_symbols == freezed
          ? _value._active_symbols
          : active_symbols // ignore: cast_nullable_to_non_nullable
              as List<ActiveSymbol>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveSymbols implements _ActiveSymbols {
  const _$_ActiveSymbols({required final List<ActiveSymbol> active_symbols})
      : _active_symbols = active_symbols;

  factory _$_ActiveSymbols.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveSymbolsFromJson(json);

  final List<ActiveSymbol> _active_symbols;
  @override
  List<ActiveSymbol> get active_symbols {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_active_symbols);
  }

  @override
  String toString() {
    return 'ActiveSymbols(active_symbols: $active_symbols)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveSymbols &&
            const DeepCollectionEquality()
                .equals(other._active_symbols, _active_symbols));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_active_symbols));

  @JsonKey(ignore: true)
  @override
  _$$_ActiveSymbolsCopyWith<_$_ActiveSymbols> get copyWith =>
      __$$_ActiveSymbolsCopyWithImpl<_$_ActiveSymbols>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveSymbolsToJson(
      this,
    );
  }
}

abstract class _ActiveSymbols implements ActiveSymbols {
  const factory _ActiveSymbols(
      {required final List<ActiveSymbol> active_symbols}) = _$_ActiveSymbols;

  factory _ActiveSymbols.fromJson(Map<String, dynamic> json) =
      _$_ActiveSymbols.fromJson;

  @override
  List<ActiveSymbol> get active_symbols;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveSymbolsCopyWith<_$_ActiveSymbols> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveSymbol _$ActiveSymbolFromJson(Map<String, dynamic> json) {
  return _ActiveSymbol.fromJson(json);
}

/// @nodoc
mixin _$ActiveSymbol {
  String get display_name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveSymbolCopyWith<ActiveSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveSymbolCopyWith<$Res> {
  factory $ActiveSymbolCopyWith(
          ActiveSymbol value, $Res Function(ActiveSymbol) then) =
      _$ActiveSymbolCopyWithImpl<$Res>;
  $Res call({String display_name, String symbol});
}

/// @nodoc
class _$ActiveSymbolCopyWithImpl<$Res> implements $ActiveSymbolCopyWith<$Res> {
  _$ActiveSymbolCopyWithImpl(this._value, this._then);

  final ActiveSymbol _value;
  // ignore: unused_field
  final $Res Function(ActiveSymbol) _then;

  @override
  $Res call({
    Object? display_name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      display_name: display_name == freezed
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ActiveSymbolCopyWith<$Res>
    implements $ActiveSymbolCopyWith<$Res> {
  factory _$$_ActiveSymbolCopyWith(
          _$_ActiveSymbol value, $Res Function(_$_ActiveSymbol) then) =
      __$$_ActiveSymbolCopyWithImpl<$Res>;
  @override
  $Res call({String display_name, String symbol});
}

/// @nodoc
class __$$_ActiveSymbolCopyWithImpl<$Res>
    extends _$ActiveSymbolCopyWithImpl<$Res>
    implements _$$_ActiveSymbolCopyWith<$Res> {
  __$$_ActiveSymbolCopyWithImpl(
      _$_ActiveSymbol _value, $Res Function(_$_ActiveSymbol) _then)
      : super(_value, (v) => _then(v as _$_ActiveSymbol));

  @override
  _$_ActiveSymbol get _value => super._value as _$_ActiveSymbol;

  @override
  $Res call({
    Object? display_name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$_ActiveSymbol(
      display_name: display_name == freezed
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveSymbol implements _ActiveSymbol {
  const _$_ActiveSymbol({required this.display_name, required this.symbol});

  factory _$_ActiveSymbol.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveSymbolFromJson(json);

  @override
  final String display_name;
  @override
  final String symbol;

  @override
  String toString() {
    return 'ActiveSymbol(display_name: $display_name, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveSymbol &&
            const DeepCollectionEquality()
                .equals(other.display_name, display_name) &&
            const DeepCollectionEquality().equals(other.symbol, symbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(display_name),
      const DeepCollectionEquality().hash(symbol));

  @JsonKey(ignore: true)
  @override
  _$$_ActiveSymbolCopyWith<_$_ActiveSymbol> get copyWith =>
      __$$_ActiveSymbolCopyWithImpl<_$_ActiveSymbol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveSymbolToJson(
      this,
    );
  }
}

abstract class _ActiveSymbol implements ActiveSymbol {
  const factory _ActiveSymbol(
      {required final String display_name,
      required final String symbol}) = _$_ActiveSymbol;

  factory _ActiveSymbol.fromJson(Map<String, dynamic> json) =
      _$_ActiveSymbol.fromJson;

  @override
  String get display_name;
  @override
  String get symbol;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveSymbolCopyWith<_$_ActiveSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}
