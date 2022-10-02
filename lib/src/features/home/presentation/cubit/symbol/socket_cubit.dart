import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/features/home/data/models/active_symbols.dart';

import 'package:web_socket_channel/io.dart';

part 'socket_state.dart';

class SocketCubit extends Cubit<SocketState>  {
  final _channel =  IOWebSocketChannel.connect(Uri.parse(Constants.baseUrl));


  SocketCubit() : super(const SymbolsEmpty(message: 'Empty')) {

    _channel.stream.listen((event) {
      if (event.contains("active_symbols")) {
        onLoadedActiveSymbols(event);
      }
    });
  }

  void getActiveSymbols(String landingCompany) async {
    _channel.sink.add(jsonEncode({
      "active_symbols": "brief",
      "landing_company": landingCompany,
    }));
  }

  @override
  Future<void> close() {
    _channel.sink.close();
    return super.close();
  }

  void onLoadedActiveSymbols(event) async {
    print("RESPONSE:: $event ");
    emit(SymbolsLoaded(symbols:  ActiveSymbols.fromJson(jsonDecode(event))));
  }
}
