part of 'your_reservation_bloc.dart';

@freezed
class YourReservationState with _$YourReservationState {
  const factory YourReservationState({
    @Default([]) List<Apartment> apartments,
    @Default(false) bool isError,
    @Default(false) bool isLoading,
    @Default(false) bool isReserve,
  }) = _YourReservationState$;
}
