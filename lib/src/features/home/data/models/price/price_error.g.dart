// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceError _$$_PriceErrorFromJson(Map<String, dynamic> json) =>
    _$_PriceError(
      error: Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PriceErrorToJson(_$_PriceError instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'message': instance.message,
    };
