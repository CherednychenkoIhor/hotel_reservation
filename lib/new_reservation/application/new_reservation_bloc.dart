import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reservation/auth/infrastructure/auth_repository.dart';
import 'package:hotel_reservation/core/models/apartment.dart';
import 'package:hotel_reservation/core/models/hr_user.dart';
import 'package:hotel_reservation/core/models/reservation.dart';
import 'package:hotel_reservation/new_reservation/infrastructure/new_reservation_repository.dart';
import 'package:injectable/injectable.dart';

part 'new_reservation_bloc.freezed.dart';
part 'new_reservation_event.dart';
part 'new_reservation_state.dart';

@injectable
class NewReservationBloc
    extends Bloc<NewReservationEvent, NewReservationState> {
  NewReservationBloc({
    required NewReservationRepository newReservationRepository,
    required AuthRepository authRepository,
  })  : _newReservationRepository = newReservationRepository,
        _authRepository = authRepository,
        super(const NewReservationState()) {
    on<_FetchApartments>(_fetchApartments);
    on<_ReserveApartments>(_reserveApartments);
    on<_Clear>(_clear);
  }
  final NewReservationRepository _newReservationRepository;

  final AuthRepository _authRepository;

  FutureOr<void> _fetchApartments(
      _FetchApartments event, Emitter<NewReservationState> emit) async {
    final apartments = await _newReservationRepository.fetchApartments();
    emit(state.copyWith(apartments: apartments));
  }

  FutureOr<void> _reserveApartments(
      _ReserveApartments event, Emitter<NewReservationState> emit) async {
    final reservationId = await _newReservationRepository.reserveApartments(
        reservation: event.reservation);
    _authRepository.updateUser(event.user
        .copyWith(reservations: [...event.user.reservations, reservationId]));
    emit(state.copyWith(isReserve: true));
  }

  FutureOr<void> _clear(_Clear event, Emitter<NewReservationState> emit) {
    emit(NewReservationState());
  }
}
