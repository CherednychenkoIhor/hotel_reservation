part of 'new_reservation_bloc.dart';

@freezed
class NewReservationState with _$NewReservationState {
  const factory NewReservationState({
    @Default([]) List<Apartment> apartments,
    @Default(false) bool isError,
    @Default(false) bool isLoading,
    @Default(false) bool isReserve,
  }) = _NewReservationState$;
}
