part of 'your_reservation_bloc.dart';

@freezed
class YourReservationEvent with _$YourReservationEvent {
  const factory YourReservationEvent.fetchApartments() = _FetchApartments;

  const factory YourReservationEvent.cancelReserveApartments({
    required int index,
  }) = _ReserveApartments;

  const factory YourReservationEvent.clear() = _Clear;
}
