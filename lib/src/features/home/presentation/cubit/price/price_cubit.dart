import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/features/home/data/models/price/price_error.dart';
import 'package:pricetracker/src/features/home/data/models/price/price_model.dart';
import 'package:web_socket_channel/io.dart';

part 'price_state.dart';

class PriceCubit extends Cubit<PriceState> {
  final _channel = IOWebSocketChannel.connect(Uri.parse(Constants.baseUrl));
  String? _subscriptionId;

  PriceCubit() : super(const PriceInitial()) {
    _channel.stream.listen((event) {
      Map<String, dynamic> map = jsonDecode(event);
      if (map.containsKey('error')) {
        onPriceError(map);
      } else if (map.containsKey('tick')) {
        onLoadedPrice(map);
      }
    });
  }

  void getPrice(String symbol) async {
    priceForget();
    emit(const PriceLoading());

    _channel.sink.add(jsonEncode({
      'ticks': symbol,
      'subscribe': 1,
    }));
  }

  @override
  Future<void> close() {
    _channel.sink.close();
    return super.close();
  }

  void onLoadedPrice(Map<String, dynamic> map) async {
    final data = PriceModel.fromJson(map);
    _subscriptionId = data.subscription.id;
    final price = data.tick.quote;
    emit(PriceLoaded(price: price));
  }

  void onPriceError(Map<String, dynamic> map) {
    final data = PriceError.fromJson(map);

    emit(PriceNotFound(message: data.error.message));
  }

  void priceForget() {
    emit(const PriceInitial());
    if (_subscriptionId != null) {
      _channel.sink.add(jsonEncode({
        'forget': _subscriptionId,
      }));
    }
  }
}
