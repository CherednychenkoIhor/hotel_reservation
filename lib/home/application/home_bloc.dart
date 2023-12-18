import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reservation/core/models/apartment.dart';
import 'package:hotel_reservation/home/infrastructure/home_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required HomeService homeService})
      : _homeService = homeService,
        super(const HomeState()) {
    on<_AddPhoto>(_addPhoto);
    on<_AddApartment>(_addApartment);
    on<_Clear>(_clear);
  }

  final HomeService _homeService;

  FutureOr<void> _addPhoto(_AddPhoto event, Emitter<HomeState> emit) async {
    emit(state.copyWith(photos: [...state.photos, event.photo]));
  }

  FutureOr<void> _addApartment(
    _AddApartment event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      List<String> photos = await _homeService.uploadPhotos(state.photos);
      await _homeService.addApartment(event.apartment.copyWith(photos: photos));
      emit(state.copyWith(isLoading: false, isSaved: true));
    } catch (_) {
      print(_);
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _clear(_Clear event, Emitter<HomeState> emit) {
    emit(const HomeState());
  }
}
