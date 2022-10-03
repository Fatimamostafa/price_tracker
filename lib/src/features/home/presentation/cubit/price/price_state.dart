part of 'price_cubit.dart';

abstract class PriceState {
  const PriceState();
}

class PriceInitial extends PriceState {
  const PriceInitial();
}

class PriceLoaded extends PriceState {
  final String price;

  const PriceLoaded({
    required this.price,
  });
}

class PriceLoading extends PriceState {
  const PriceLoading();
}

class PriceError extends PriceState {
  final String message;

  const PriceError({required this.message});
}
