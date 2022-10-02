part of 'socket_cubit.dart';

abstract class SocketState {
  const SocketState();
}

class SymbolsLoaded extends SocketState {
  final ActiveSymbols symbols;

  const SymbolsLoaded({
    required this.symbols,
  });
}

class SymbolsEmpty extends SocketState {
  final String message;

  const SymbolsEmpty({required this.message});
}
