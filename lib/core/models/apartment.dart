import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reservation/utils/json_converter.dart';

part 'apartment.freezed.dart';
part 'apartment.g.dart';

@freezed
class Apartment with _$Apartment {
  const factory Apartment({
    required String name,
    required String apartmentId,
    required String description,
    required String location,
    required int rooms,
    required double price,
    required List<String> photos,
    @TimestampListConverter() required List<DateTime> selectedDays,
  }) = _Apartment;

  factory Apartment.fromJson(Map<String, Object?> json) =>
      _$ApartmentFromJson(json);
}
