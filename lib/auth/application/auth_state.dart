part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    HrUser? user,
    @Default(false) bool isError,
    @Default(false) bool isLoading,
    @Default(true) bool isSignIn,
  }) = _AuthState$;
}
