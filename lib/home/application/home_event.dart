part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.addPhoto({required XFile photo}) = _AddPhoto;

  const factory HomeEvent.clear() = _Clear;
  const factory HomeEvent.addApartment({required Apartment apartment}) =
      _AddApartment;
}
