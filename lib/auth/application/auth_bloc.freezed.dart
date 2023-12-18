// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() init,
    required TResult Function() signInWithGoogle,
    required TResult Function() goSignIn,
    required TResult Function() goSignUp,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String userName, String password)
        createUserWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? init,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? goSignIn,
    TResult? Function()? goSignUp,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? init,
    TResult Function()? signInWithGoogle,
    TResult Function()? goSignIn,
    TResult Function()? goSignUp,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(Init value) init,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(GoSignIn value) goSignIn,
    required TResult Function(GoSignUp value) goSignUp,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOut value)? signOut,
    TResult? Function(Init value)? init,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(GoSignIn value)? goSignIn,
    TResult? Function(GoSignUp value)? goSignUp,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(Init value)? init,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(GoSignIn value)? goSignIn,
    TResult Function(GoSignUp value)? goSignUp,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() init,
    required TResult Function() signInWithGoogle,
    required TResult Function() goSignIn,
    required TResult Function() goSignUp,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String userName, String password)
        createUserWithEmailAndPassword,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? init,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? goSignIn,
    TResult? Function()? goSignUp,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? init,
    TResult Function()? signInWithGoogle,
    TResult Function()? goSignIn,
    TResult Function()? goSignUp,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(Init value) init,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(GoSignIn value) goSignIn,
    required TResult Function(GoSignUp value) goSignUp,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOut value)? signOut,
    TResult? Function(Init value)? init,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(GoSignIn value)? goSignIn,
    TResult? Function(GoSignUp value)? goSignUp,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(Init value)? init,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(GoSignIn value)? goSignIn,
    TResult Function(GoSignUp value)? goSignUp,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'AuthEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() init,
    required TResult Function() signInWithGoogle,
    required TResult Function() goSignIn,
    required TResult Function() goSignUp,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String userName, String password)
        createUserWithEmailAndPassword,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? init,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? goSignIn,
    TResult? Function()? goSignUp,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? init,
    TResult Function()? signInWithGoogle,
    TResult Function()? goSignIn,
    TResult Function()? goSignUp,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(Init value) init,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(GoSignIn value) goSignIn,
    required TResult Function(GoSignUp value) goSignUp,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOut value)? signOut,
    TResult? Function(Init value)? init,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(GoSignIn value)? goSignIn,
    TResult? Function(GoSignUp value)? goSignUp,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(Init value)? init,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(GoSignIn value)? goSignIn,
    TResult Function(GoSignUp value)? goSignUp,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements AuthEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$SignInWithGoogleImplCopyWith<$Res> {
  factory _$$SignInWithGoogleImplCopyWith(_$SignInWithGoogleImpl value,
          $Res Function(_$SignInWithGoogleImpl) then) =
      __$$SignInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGoogleImpl>
    implements _$$SignInWithGoogleImplCopyWith<$Res> {
  __$$SignInWithGoogleImplCopyWithImpl(_$SignInWithGoogleImpl _value,
      $Res Function(_$SignInWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGoogleImpl implements SignInWithGoogle {
  const _$SignInWithGoogleImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() init,
    required TResult Function() signInWithGoogle,
    required TResult Function() goSignIn,
    required TResult Function() goSignUp,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String userName, String password)
        createUserWithEmailAndPassword,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? init,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? goSignIn,
    TResult? Function()? goSignUp,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? init,
    TResult Function()? signInWithGoogle,
    TResult Function()? goSignIn,
    TResult Function()? goSignUp,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(Init value) init,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(GoSignIn value) goSignIn,
    required TResult Function(GoSignUp value) goSignUp,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOut value)? signOut,
    TResult? Function(Init value)? init,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(GoSignIn value)? goSignIn,
    TResult? Function(GoSignUp value)? goSignUp,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(Init value)? init,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(GoSignIn value)? goSignIn,
    TResult Function(GoSignUp value)? goSignUp,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements AuthEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogleImpl;
}

/// @nodoc
abstract class _$$GoSignInImplCopyWith<$Res> {
  factory _$$GoSignInImplCopyWith(
          _$GoSignInImpl value, $Res Function(_$GoSignInImpl) then) =
      __$$GoSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoSignInImpl>
    implements _$$GoSignInImplCopyWith<$Res> {
  __$$GoSignInImplCopyWithImpl(
      _$GoSignInImpl _value, $Res Function(_$GoSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoSignInImpl implements GoSignIn {
  const _$GoSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.goSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() init,
    required TResult Function() signInWithGoogle,
    required TResult Function() goSignIn,
    required TResult Function() goSignUp,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String userName, String password)
        createUserWithEmailAndPassword,
  }) {
    return goSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? init,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? goSignIn,
    TResult? Function()? goSignUp,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
  }) {
    return goSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? init,
    TResult Function()? signInWithGoogle,
    TResult Function()? goSignIn,
    TResult Function()? goSignUp,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (goSignIn != null) {
      return goSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(Init value) init,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(GoSignIn value) goSignIn,
    required TResult Function(GoSignUp value) goSignUp,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return goSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOut value)? signOut,
    TResult? Function(Init value)? init,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(GoSignIn value)? goSignIn,
    TResult? Function(GoSignUp value)? goSignUp,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return goSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(Init value)? init,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(GoSignIn value)? goSignIn,
    TResult Function(GoSignUp value)? goSignUp,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (goSignIn != null) {
      return goSignIn(this);
    }
    return orElse();
  }
}

abstract class GoSignIn implements AuthEvent {
  const factory GoSignIn() = _$GoSignInImpl;
}

/// @nodoc
abstract class _$$GoSignUpImplCopyWith<$Res> {
  factory _$$GoSignUpImplCopyWith(
          _$GoSignUpImpl value, $Res Function(_$GoSignUpImpl) then) =
      __$$GoSignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoSignUpImpl>
    implements _$$GoSignUpImplCopyWith<$Res> {
  __$$GoSignUpImplCopyWithImpl(
      _$GoSignUpImpl _value, $Res Function(_$GoSignUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoSignUpImpl implements GoSignUp {
  const _$GoSignUpImpl();

  @override
  String toString() {
    return 'AuthEvent.goSignUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoSignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() init,
    required TResult Function() signInWithGoogle,
    required TResult Function() goSignIn,
    required TResult Function() goSignUp,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String userName, String password)
        createUserWithEmailAndPassword,
  }) {
    return goSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? init,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? goSignIn,
    TResult? Function()? goSignUp,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
  }) {
    return goSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? init,
    TResult Function()? signInWithGoogle,
    TResult Function()? goSignIn,
    TResult Function()? goSignUp,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (goSignUp != null) {
      return goSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(Init value) init,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(GoSignIn value) goSignIn,
    required TResult Function(GoSignUp value) goSignUp,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return goSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOut value)? signOut,
    TResult? Function(Init value)? init,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(GoSignIn value)? goSignIn,
    TResult? Function(GoSignUp value)? goSignUp,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return goSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(Init value)? init,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(GoSignIn value)? goSignIn,
    TResult Function(GoSignUp value)? goSignUp,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (goSignUp != null) {
      return goSignUp(this);
    }
    return orElse();
  }
}

abstract class GoSignUp implements AuthEvent {
  const factory GoSignUp() = _$GoSignUpImpl;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordImplCopyWith(
          _$SignInWithEmailAndPasswordImpl value,
          $Res Function(_$SignInWithEmailAndPasswordImpl) then) =
      __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithEmailAndPasswordImpl>
    implements _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordImplCopyWithImpl(
      _$SignInWithEmailAndPasswordImpl _value,
      $Res Function(_$SignInWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInWithEmailAndPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailAndPasswordImpl implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPasswordImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => __$$SignInWithEmailAndPasswordImplCopyWithImpl<
          _$SignInWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() init,
    required TResult Function() signInWithGoogle,
    required TResult Function() goSignIn,
    required TResult Function() goSignUp,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String userName, String password)
        createUserWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? init,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? goSignIn,
    TResult? Function()? goSignUp,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? init,
    TResult Function()? signInWithGoogle,
    TResult Function()? goSignIn,
    TResult Function()? goSignUp,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(Init value) init,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(GoSignIn value) goSignIn,
    required TResult Function(GoSignUp value) goSignUp,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOut value)? signOut,
    TResult? Function(Init value)? init,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(GoSignIn value)? goSignIn,
    TResult? Function(GoSignUp value)? goSignUp,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(Init value)? init,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(GoSignIn value)? goSignIn,
    TResult Function(GoSignUp value)? goSignUp,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements AuthEvent {
  const factory SignInWithEmailAndPassword(
      {required final String email,
      required final String password}) = _$SignInWithEmailAndPasswordImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$CreateUserWithEmailAndPasswordImplCopyWith(
          _$CreateUserWithEmailAndPasswordImpl value,
          $Res Function(_$CreateUserWithEmailAndPasswordImpl) then) =
      __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String userName, String password});
}

/// @nodoc
class __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateUserWithEmailAndPasswordImpl>
    implements _$$CreateUserWithEmailAndPasswordImplCopyWith<$Res> {
  __$$CreateUserWithEmailAndPasswordImplCopyWithImpl(
      _$CreateUserWithEmailAndPasswordImpl _value,
      $Res Function(_$CreateUserWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$CreateUserWithEmailAndPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserWithEmailAndPasswordImpl
    implements CreateUserWithEmailAndPassword {
  const _$CreateUserWithEmailAndPasswordImpl(
      {required this.email, required this.userName, required this.password});

  @override
  final String email;
  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.createUserWithEmailAndPassword(email: $email, userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserWithEmailAndPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserWithEmailAndPasswordImplCopyWith<
          _$CreateUserWithEmailAndPasswordImpl>
      get copyWith => __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<
          _$CreateUserWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() init,
    required TResult Function() signInWithGoogle,
    required TResult Function() goSignIn,
    required TResult Function() goSignUp,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String userName, String password)
        createUserWithEmailAndPassword,
  }) {
    return createUserWithEmailAndPassword(email, userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? init,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? goSignIn,
    TResult? Function()? goSignUp,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
  }) {
    return createUserWithEmailAndPassword?.call(email, userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? init,
    TResult Function()? signInWithGoogle,
    TResult Function()? goSignIn,
    TResult Function()? goSignUp,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String userName, String password)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(email, userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(Init value) init,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(GoSignIn value) goSignIn,
    required TResult Function(GoSignUp value) goSignUp,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return createUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOut value)? signOut,
    TResult? Function(Init value)? init,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(GoSignIn value)? goSignIn,
    TResult? Function(GoSignUp value)? goSignUp,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return createUserWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(Init value)? init,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(GoSignIn value)? goSignIn,
    TResult Function(GoSignUp value)? goSignUp,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class CreateUserWithEmailAndPassword implements AuthEvent {
  const factory CreateUserWithEmailAndPassword(
      {required final String email,
      required final String userName,
      required final String password}) = _$CreateUserWithEmailAndPasswordImpl;

  String get email;
  String get userName;
  String get password;
  @JsonKey(ignore: true)
  _$$CreateUserWithEmailAndPasswordImplCopyWith<
          _$CreateUserWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  HrUser? get user => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSignIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({HrUser? user, bool isError, bool isLoading, bool isSignIn});

  $HrUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isError = null,
    Object? isLoading = null,
    Object? isSignIn = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as HrUser?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignIn: null == isSignIn
          ? _value.isSignIn
          : isSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HrUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $HrUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthState$ImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthState$ImplCopyWith(
          _$AuthState$Impl value, $Res Function(_$AuthState$Impl) then) =
      __$$AuthState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HrUser? user, bool isError, bool isLoading, bool isSignIn});

  @override
  $HrUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthState$ImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthState$Impl>
    implements _$$AuthState$ImplCopyWith<$Res> {
  __$$AuthState$ImplCopyWithImpl(
      _$AuthState$Impl _value, $Res Function(_$AuthState$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isError = null,
    Object? isLoading = null,
    Object? isSignIn = null,
  }) {
    return _then(_$AuthState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as HrUser?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignIn: null == isSignIn
          ? _value.isSignIn
          : isSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthState$Impl implements _AuthState$ {
  const _$AuthState$Impl(
      {this.user,
      this.isError = false,
      this.isLoading = false,
      this.isSignIn = true});

  @override
  final HrUser? user;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSignIn;

  @override
  String toString() {
    return 'AuthState(user: $user, isError: $isError, isLoading: $isLoading, isSignIn: $isSignIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSignIn, isSignIn) ||
                other.isSignIn == isSignIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, isError, isLoading, isSignIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthState$ImplCopyWith<_$AuthState$Impl> get copyWith =>
      __$$AuthState$ImplCopyWithImpl<_$AuthState$Impl>(this, _$identity);
}

abstract class _AuthState$ implements AuthState {
  const factory _AuthState$(
      {final HrUser? user,
      final bool isError,
      final bool isLoading,
      final bool isSignIn}) = _$AuthState$Impl;

  @override
  HrUser? get user;
  @override
  bool get isError;
  @override
  bool get isLoading;
  @override
  bool get isSignIn;
  @override
  @JsonKey(ignore: true)
  _$$AuthState$ImplCopyWith<_$AuthState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
