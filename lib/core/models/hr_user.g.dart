// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hr_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HrUserImpl _$$HrUserImplFromJson(Map<String, dynamic> json) => _$HrUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      isAdmin: json['isAdmin'] as bool? ?? false,
      reservations: (json['reservations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      lastLoginAt:
          const TimestampConverter().fromJson(json['lastLoginAt'] as Timestamp),
    );

Map<String, dynamic> _$$HrUserImplToJson(_$HrUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
      'reservations': instance.reservations,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'lastLoginAt': const TimestampConverter().toJson(instance.lastLoginAt),
    };
