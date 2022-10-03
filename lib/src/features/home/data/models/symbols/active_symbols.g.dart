// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_symbols.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActiveSymbols _$$_ActiveSymbolsFromJson(Map<String, dynamic> json) =>
    _$_ActiveSymbols(
      active_symbols: (json['active_symbols'] as List<dynamic>)
          .map((e) => ActiveSymbol.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ActiveSymbolsToJson(_$_ActiveSymbols instance) =>
    <String, dynamic>{
      'active_symbols': instance.active_symbols,
    };

_$_ActiveSymbol _$$_ActiveSymbolFromJson(Map<String, dynamic> json) =>
    _$_ActiveSymbol(
      display_name: json['display_name'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$$_ActiveSymbolToJson(_$_ActiveSymbol instance) =>
    <String, dynamic>{
      'display_name': instance.display_name,
      'symbol': instance.symbol,
    };
