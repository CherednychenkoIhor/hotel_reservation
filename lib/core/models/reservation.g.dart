// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationImpl _$$ReservationImplFromJson(Map<String, dynamic> json) =>
    _$ReservationImpl(
      apartmentId: json['apartmentId'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      price: (json['price'] as num).toDouble(),
      selectedDays: const TimestampListConverter()
          .fromJson(json['selectedDays'] as List<dynamic>),
    );

Map<String, dynamic> _$$ReservationImplToJson(_$ReservationImpl instance) =>
    <String, dynamic>{
      'apartmentId': instance.apartmentId,
      'description': instance.description,
      'location': instance.location,
      'price': instance.price,
      'selectedDays':
          const TimestampListConverter().toJson(instance.selectedDays),
    };
