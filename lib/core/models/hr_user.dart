import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reservation/core/models/reservation.dart';
import 'package:hotel_reservation/utils/json_converter.dart';

part 'hr_user.freezed.dart';
part 'hr_user.g.dart';

@freezed
class HrUser with _$HrUser {
  const factory HrUser({
    required String id,
    required String name,
    required String email,
    @Default(false) bool isAdmin,
    @Default([]) List<String> reservations,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime lastLoginAt,
  }) = _HrUser;

  factory HrUser.fromJson(Map<String, Object?> json) => _$HrUserFromJson(json);
}
