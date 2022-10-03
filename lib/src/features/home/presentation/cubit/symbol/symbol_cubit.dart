import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/service_locator.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/features/home/data/models/symbols/active_symbols.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';

import 'package:web_socket_channel/io.dart';

part 'symbol_state.dart';

class SymbolCubit extends Cubit<SymbolState> {
  final _channel = IOWebSocketChannel.connect(Uri.parse(Constants.baseUrl));

  SymbolCubit() : super(const SymbolsEmpty(message: 'Empty')) {
    _channel.stream.listen((event) {
      Map<String, dynamic> map = jsonDecode(event);
      if (map.containsKey('active_symbols')) {
        onLoadedActiveSymbols(map);
      }
    });
  }

  void getActiveSymbols(String landingCompany) async {
    emit(const SymbolsLoading());
    sl<PriceCubit>().priceForget();
    _channel.sink.add(jsonEncode({
      'active_symbols': 'brief',
      'landing_company': landingCompany,
    }));
  }

  @override
  Future<void> close() {
    _channel.sink.close();
    return super.close();
  }

  void onLoadedActiveSymbols(Map<String, dynamic> map) async {
    final activeSymbols = ActiveSymbols.fromJson(map);

    activeSymbols.active_symbols.isNotEmpty
        ? emit(SymbolsLoaded(symbols: activeSymbols))
        : emit(const SymbolsEmpty(message: Constants.emptySymbols));
  }
}
