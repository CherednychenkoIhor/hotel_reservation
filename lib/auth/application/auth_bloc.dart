import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reservation/auth/infrastructure/auth_repository.dart';
import 'package:hotel_reservation/core/models/hr_user.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState()) {
    on<Init>(_init);
    on<SignInWithGoogle>(_signInWithGoogle);
    on<SignOut>(_signOut);
    on<GoSignIn>(_goSignIn);
    on<GoSignUp>(_goSignOut);
    on<SignInWithEmailAndPassword>(_signInWithEmailAndPassword);
    on<CreateUserWithEmailAndPassword>(_createUserWithEmailAndPassword);
  }
  final AuthRepository _authRepository;
  FutureOr<void> _signInWithGoogle(
    SignInWithGoogle event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final HrUser? user = await _authRepository.signInWithGoogle();
    emit(state.copyWith(user: user, isLoading: false));
  }

  FutureOr<void> _signInWithEmailAndPassword(
    SignInWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final HrUser? user = await _authRepository.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(user: user, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isError: true, isLoading: false));
      debugPrint(e.toString());
    }
  }

  FutureOr<void> _signOut(SignOut event, Emitter<AuthState> emit) async {
    emit(const AuthState());
    await _authRepository.signOut();
  }

  FutureOr<void> _createUserWithEmailAndPassword(
    CreateUserWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final HrUser? user = await _authRepository.createUserWithEmailAndPassword(
        email: event.email,
        userName: event.userName,
        password: event.password,
      );
      emit(state.copyWith(user: user));
    } catch (e) {
      emit(state.copyWith(isError: true));
      debugPrint(e.toString());
    }
  }

  FutureOr<void> _init(Init event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true));
    final HrUser? user = await _authRepository.getCurrentUser();
    emit(state.copyWith(user: user, isLoading: false));
  }

  FutureOr<void> _goSignIn(GoSignIn event, Emitter<AuthState> emit) {
    emit(state.copyWith(isSignIn: true));
  }

  FutureOr<void> _goSignOut(GoSignUp event, Emitter<AuthState> emit) {
    emit(state.copyWith(isSignIn: false));
  }
}
