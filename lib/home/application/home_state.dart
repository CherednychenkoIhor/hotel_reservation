part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<XFile> photos,
    @Default(false) bool isLoading,
    @Default(false) bool isSaved,
  }) = _HomeState;
}
