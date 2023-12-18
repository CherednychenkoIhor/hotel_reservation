import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reservation/utils/json_converter.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed
class Reservation with _$Reservation {
  const factory Reservation({
    required String apartmentId,
    required String description,
    required String location,
    required double price,
    @TimestampListConverter() required List<DateTime> selectedDays,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, Object?> json) =>
      _$ReservationFromJson(json);
}
