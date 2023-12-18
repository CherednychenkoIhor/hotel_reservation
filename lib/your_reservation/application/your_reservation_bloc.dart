import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reservation/auth/infrastructure/auth_repository.dart';
import 'package:hotel_reservation/core/models/apartment.dart';
import 'package:hotel_reservation/your_reservation/infrastructure/your_reservation_repository.dart';
import 'package:injectable/injectable.dart';

part 'your_reservation_bloc.freezed.dart';
part 'your_reservation_event.dart';
part 'your_reservation_state.dart';

@injectable
class YourReservationBloc
    extends Bloc<YourReservationEvent, YourReservationState> {
  YourReservationBloc({
    required YourReservationRepository yourReservationRepository,
    required AuthRepository authRepository,
  })  : _yourReservationRepository = yourReservationRepository,
        _authRepository = authRepository,
        super(const YourReservationState()) {
    on<_FetchApartments>(_fetchApartments);
    on<_ReserveApartments>(_reserveApartments);
    on<_Clear>(_clear);
  }
  final YourReservationRepository _yourReservationRepository;

  final AuthRepository _authRepository;

  FutureOr<void> _fetchApartments(
      _FetchApartments event, Emitter<YourReservationState> emit) async {
    final user = await _authRepository.getCurrentUser();
    if (user != null) {
      final apartments = await _yourReservationRepository.fetchApartments(
          apartmentsList: user.reservations);
      emit(state.copyWith(apartments: apartments));
    }
  }

  FutureOr<void> _reserveApartments(
      _ReserveApartments event, Emitter<YourReservationState> emit) async {
    final user = await _authRepository.getCurrentUser();
    if (user != null) {
      final List<String> reservations = [...user.reservations];
      _yourReservationRepository.cancelReservationApartments(
          reservationId: reservations[event.index]);
      reservations.removeAt(event.index);
      await _authRepository
          .updateUser(user.copyWith(reservations: reservations));
      add(_FetchApartments());
    }
  }

  FutureOr<void> _clear(_Clear event, Emitter<YourReservationState> emit) {
    emit(YourReservationState());
  }
}
