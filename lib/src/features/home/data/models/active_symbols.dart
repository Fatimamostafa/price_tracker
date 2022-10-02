import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_symbols.freezed.dart';

part 'active_symbols.g.dart';

@freezed
abstract class ActiveSymbols with _$ActiveSymbols {
  const factory ActiveSymbols({
    required List<ActiveSymbol> active_symbols,
  }) = _ActiveSymbols;

  factory ActiveSymbols.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolsFromJson(json);

}

@freezed
abstract class ActiveSymbol with _$ActiveSymbol {
  const factory ActiveSymbol({
    required String display_name,
    required String symbol,
  }) = _ActiveSymbol;

  factory ActiveSymbol.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolFromJson(json);
}
