// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceModel _$$_PriceModelFromJson(Map<String, dynamic> json) =>
    _$_PriceModel(
      subscription:
          Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      tick: Tick.fromJson(json['tick'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PriceModelToJson(_$_PriceModel instance) =>
    <String, dynamic>{
      'subscription': instance.subscription,
      'tick': instance.tick,
    };

_$_Subscription _$$_SubscriptionFromJson(Map<String, dynamic> json) =>
    _$_Subscription(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_Tick _$$_TickFromJson(Map<String, dynamic> json) => _$_Tick(
      id: json['id'] as String,
      quote: (json['quote'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TickToJson(_$_Tick instance) => <String, dynamic>{
      'id': instance.id,
      'quote': instance.quote,
    };
