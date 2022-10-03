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
      if (event.contains("error")) {
        onPriceError(event);
      } else if (event.contains("ticks")) {
        onLoadedPrice(event);
      }
    });
  }

  void getPrice(String symbol) async {
    priceForget();

    emit(const PriceLoading());
    _channel.sink.add(jsonEncode({
      "ticks": symbol,
      "subscribe": 1,
    }));
  }

  @override
  Future<void> close() {
    _channel.sink.close();
    return super.close();
  }

  void onLoadedPrice(event) async {
    final price = PriceModel.fromJson(jsonDecode(event));
    _subscriptionId = price.subscription.id;
    emit(PriceLoaded(price: price.tick.quote));
  }

  void onPriceError(event) {
    final data = PriceError.fromJson(jsonDecode(event));

    emit(PriceNotFound(message: data.error.message));
  }

  void priceForget() {
    print('priceForget $_subscriptionId');
    if (_subscriptionId != null) {
      _channel.sink.add(jsonEncode({"forget": _subscriptionId}));
    }
    emit(const PriceInitial());
  }
}
