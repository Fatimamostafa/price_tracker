import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:web_socket_channel/io.dart';

part 'price_state.dart';

class PriceCubit extends Cubit<PriceState> {
  final _channel = IOWebSocketChannel.connect(Uri.parse(Constants.baseUrl));

  PriceCubit() : super(const PriceInitial()) {
    _channel.stream.listen((event) {
      if (event.contains("active_symbols")) {
        onLoadedPrice(event);
      }
    });
  }

  void getPrice(String symbol) async {
    emit(const PriceLoading());
    _channel.sink.add(jsonEncode({
      "active_symbols": "brief",
    }));
  }

  @override
  Future<void> close() {
    _channel.sink.close();
    return super.close();
  }

  void onLoadedPrice(event) async {
    print("RESPONSE:: $event ");
    //final activeSymbols = ActiveSymbols.fromJson(jsonDecode(event));

    // emit(
    //   const SymbolsEmpty(message: Constants.emptySymbols),
    // );
  }
}
