import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_model.freezed.dart';
part 'price_model.g.dart';



@freezed
abstract class PriceModel with _$PriceModel {
  const factory PriceModel({
    required Subscription subscription,
    required Tick tick,
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) => _$PriceModelFromJson(json);
}

@freezed
abstract class Subscription with _$Subscription {
  const factory Subscription({
    required String id,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}

@freezed
abstract class Tick with _$Tick {
  const factory Tick({
    required String id,
    required double quote,
  }) = _Tick;

  factory Tick.fromJson(Map<String, dynamic> json) => _$TickFromJson(json);
}
