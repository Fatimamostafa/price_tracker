part of 'symbol_cubit.dart';

abstract class SymbolState {
  const SymbolState();
}

class SymbolsLoaded extends SymbolState {
  final ActiveSymbols symbols;

  const SymbolsLoaded({
    required this.symbols,
  });
}

class SymbolsLoading extends SymbolState {
  const SymbolsLoading();
}

class SymbolsEmpty extends SymbolState {
  final String message;

  const SymbolsEmpty({required this.message});
}
