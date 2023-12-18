part of 'new_reservation_bloc.dart';

@freezed
class NewReservationEvent with _$NewReservationEvent {
  const factory NewReservationEvent.fetchApartments({
    int? minRooms,
    int? maxRooms,
    double? minPrice,
    double? maxPrice,
    String? name,
  }) = _FetchApartments;

  const factory NewReservationEvent.reserveApartments({
    required Reservation reservation,
    required HrUser user,
  }) = _ReserveApartments;

  const factory NewReservationEvent.clear() = _Clear;
}
