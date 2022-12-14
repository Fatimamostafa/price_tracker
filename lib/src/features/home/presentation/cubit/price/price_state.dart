part of 'price_cubit.dart';

abstract class PriceState {
  const PriceState();
}

class PriceInitial extends PriceState {
  const PriceInitial();
}

class PriceLoaded extends PriceState {
  final double currentPrice;
  final double previousPrice;

  const PriceLoaded({
    required this.currentPrice,
    required this.previousPrice,
  });
}

class PriceLoading extends PriceState {
  const PriceLoading();
}

class PriceNotFound extends PriceState {
  final String message;

  const PriceNotFound({required this.message});
}
