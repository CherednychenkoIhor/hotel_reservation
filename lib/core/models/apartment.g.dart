// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApartmentImpl _$$ApartmentImplFromJson(Map<String, dynamic> json) =>
    _$ApartmentImpl(
      name: json['name'] as String,
      apartmentId: json['apartmentId'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      rooms: json['rooms'] as int,
      price: (json['price'] as num).toDouble(),
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      selectedDays: const TimestampListConverter()
          .fromJson(json['selectedDays'] as List<dynamic>),
    );

Map<String, dynamic> _$$ApartmentImplToJson(_$ApartmentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'apartmentId': instance.apartmentId,
      'description': instance.description,
      'location': instance.location,
      'rooms': instance.rooms,
      'price': instance.price,
      'photos': instance.photos,
      'selectedDays':
          const TimestampListConverter().toJson(instance.selectedDays),
    };
