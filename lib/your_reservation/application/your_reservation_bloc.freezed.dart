// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'your_reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$YourReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchApartments,
    required TResult Function(int index) cancelReserveApartments,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchApartments,
    TResult? Function(int index)? cancelReserveApartments,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchApartments,
    TResult Function(int index)? cancelReserveApartments,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchApartments value) fetchApartments,
    required TResult Function(_ReserveApartments value) cancelReserveApartments,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchApartments value)? fetchApartments,
    TResult? Function(_ReserveApartments value)? cancelReserveApartments,
    TResult? Function(_Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchApartments value)? fetchApartments,
    TResult Function(_ReserveApartments value)? cancelReserveApartments,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourReservationEventCopyWith<$Res> {
  factory $YourReservationEventCopyWith(YourReservationEvent value,
          $Res Function(YourReservationEvent) then) =
      _$YourReservationEventCopyWithImpl<$Res, YourReservationEvent>;
}

/// @nodoc
class _$YourReservationEventCopyWithImpl<$Res,
        $Val extends YourReservationEvent>
    implements $YourReservationEventCopyWith<$Res> {
  _$YourReservationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchApartmentsImplCopyWith<$Res> {
  factory _$$FetchApartmentsImplCopyWith(_$FetchApartmentsImpl value,
          $Res Function(_$FetchApartmentsImpl) then) =
      __$$FetchApartmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchApartmentsImplCopyWithImpl<$Res>
    extends _$YourReservationEventCopyWithImpl<$Res, _$FetchApartmentsImpl>
    implements _$$FetchApartmentsImplCopyWith<$Res> {
  __$$FetchApartmentsImplCopyWithImpl(
      _$FetchApartmentsImpl _value, $Res Function(_$FetchApartmentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchApartmentsImpl implements _FetchApartments {
  const _$FetchApartmentsImpl();

  @override
  String toString() {
    return 'YourReservationEvent.fetchApartments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchApartmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchApartments,
    required TResult Function(int index) cancelReserveApartments,
    required TResult Function() clear,
  }) {
    return fetchApartments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchApartments,
    TResult? Function(int index)? cancelReserveApartments,
    TResult? Function()? clear,
  }) {
    return fetchApartments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchApartments,
    TResult Function(int index)? cancelReserveApartments,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (fetchApartments != null) {
      return fetchApartments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchApartments value) fetchApartments,
    required TResult Function(_ReserveApartments value) cancelReserveApartments,
    required TResult Function(_Clear value) clear,
  }) {
    return fetchApartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchApartments value)? fetchApartments,
    TResult? Function(_ReserveApartments value)? cancelReserveApartments,
    TResult? Function(_Clear value)? clear,
  }) {
    return fetchApartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchApartments value)? fetchApartments,
    TResult Function(_ReserveApartments value)? cancelReserveApartments,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (fetchApartments != null) {
      return fetchApartments(this);
    }
    return orElse();
  }
}

abstract class _FetchApartments implements YourReservationEvent {
  const factory _FetchApartments() = _$FetchApartmentsImpl;
}

/// @nodoc
abstract class _$$ReserveApartmentsImplCopyWith<$Res> {
  factory _$$ReserveApartmentsImplCopyWith(_$ReserveApartmentsImpl value,
          $Res Function(_$ReserveApartmentsImpl) then) =
      __$$ReserveApartmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ReserveApartmentsImplCopyWithImpl<$Res>
    extends _$YourReservationEventCopyWithImpl<$Res, _$ReserveApartmentsImpl>
    implements _$$ReserveApartmentsImplCopyWith<$Res> {
  __$$ReserveApartmentsImplCopyWithImpl(_$ReserveApartmentsImpl _value,
      $Res Function(_$ReserveApartmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ReserveApartmentsImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReserveApartmentsImpl implements _ReserveApartments {
  const _$ReserveApartmentsImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'YourReservationEvent.cancelReserveApartments(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReserveApartmentsImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReserveApartmentsImplCopyWith<_$ReserveApartmentsImpl> get copyWith =>
      __$$ReserveApartmentsImplCopyWithImpl<_$ReserveApartmentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchApartments,
    required TResult Function(int index) cancelReserveApartments,
    required TResult Function() clear,
  }) {
    return cancelReserveApartments(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchApartments,
    TResult? Function(int index)? cancelReserveApartments,
    TResult? Function()? clear,
  }) {
    return cancelReserveApartments?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchApartments,
    TResult Function(int index)? cancelReserveApartments,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (cancelReserveApartments != null) {
      return cancelReserveApartments(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchApartments value) fetchApartments,
    required TResult Function(_ReserveApartments value) cancelReserveApartments,
    required TResult Function(_Clear value) clear,
  }) {
    return cancelReserveApartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchApartments value)? fetchApartments,
    TResult? Function(_ReserveApartments value)? cancelReserveApartments,
    TResult? Function(_Clear value)? clear,
  }) {
    return cancelReserveApartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchApartments value)? fetchApartments,
    TResult Function(_ReserveApartments value)? cancelReserveApartments,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (cancelReserveApartments != null) {
      return cancelReserveApartments(this);
    }
    return orElse();
  }
}

abstract class _ReserveApartments implements YourReservationEvent {
  const factory _ReserveApartments({required final int index}) =
      _$ReserveApartmentsImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ReserveApartmentsImplCopyWith<_$ReserveApartmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$YourReservationEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'YourReservationEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchApartments,
    required TResult Function(int index) cancelReserveApartments,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchApartments,
    TResult? Function(int index)? cancelReserveApartments,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchApartments,
    TResult Function(int index)? cancelReserveApartments,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchApartments value) fetchApartments,
    required TResult Function(_ReserveApartments value) cancelReserveApartments,
    required TResult Function(_Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchApartments value)? fetchApartments,
    TResult? Function(_ReserveApartments value)? cancelReserveApartments,
    TResult? Function(_Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchApartments value)? fetchApartments,
    TResult Function(_ReserveApartments value)? cancelReserveApartments,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements YourReservationEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$YourReservationState {
  List<Apartment> get apartments => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReserve => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YourReservationStateCopyWith<YourReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourReservationStateCopyWith<$Res> {
  factory $YourReservationStateCopyWith(YourReservationState value,
          $Res Function(YourReservationState) then) =
      _$YourReservationStateCopyWithImpl<$Res, YourReservationState>;
  @useResult
  $Res call(
      {List<Apartment> apartments,
      bool isError,
      bool isLoading,
      bool isReserve});
}

/// @nodoc
class _$YourReservationStateCopyWithImpl<$Res,
        $Val extends YourReservationState>
    implements $YourReservationStateCopyWith<$Res> {
  _$YourReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apartments = null,
    Object? isError = null,
    Object? isLoading = null,
    Object? isReserve = null,
  }) {
    return _then(_value.copyWith(
      apartments: null == apartments
          ? _value.apartments
          : apartments // ignore: cast_nullable_to_non_nullable
              as List<Apartment>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserve: null == isReserve
          ? _value.isReserve
          : isReserve // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YourReservationState$ImplCopyWith<$Res>
    implements $YourReservationStateCopyWith<$Res> {
  factory _$$YourReservationState$ImplCopyWith(
          _$YourReservationState$Impl value,
          $Res Function(_$YourReservationState$Impl) then) =
      __$$YourReservationState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Apartment> apartments,
      bool isError,
      bool isLoading,
      bool isReserve});
}

/// @nodoc
class __$$YourReservationState$ImplCopyWithImpl<$Res>
    extends _$YourReservationStateCopyWithImpl<$Res,
        _$YourReservationState$Impl>
    implements _$$YourReservationState$ImplCopyWith<$Res> {
  __$$YourReservationState$ImplCopyWithImpl(_$YourReservationState$Impl _value,
      $Res Function(_$YourReservationState$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apartments = null,
    Object? isError = null,
    Object? isLoading = null,
    Object? isReserve = null,
  }) {
    return _then(_$YourReservationState$Impl(
      apartments: null == apartments
          ? _value._apartments
          : apartments // ignore: cast_nullable_to_non_nullable
              as List<Apartment>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserve: null == isReserve
          ? _value.isReserve
          : isReserve // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$YourReservationState$Impl implements _YourReservationState$ {
  const _$YourReservationState$Impl(
      {final List<Apartment> apartments = const [],
      this.isError = false,
      this.isLoading = false,
      this.isReserve = false})
      : _apartments = apartments;

  final List<Apartment> _apartments;
  @override
  @JsonKey()
  List<Apartment> get apartments {
    if (_apartments is EqualUnmodifiableListView) return _apartments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apartments);
  }

  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isReserve;

  @override
  String toString() {
    return 'YourReservationState(apartments: $apartments, isError: $isError, isLoading: $isLoading, isReserve: $isReserve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YourReservationState$Impl &&
            const DeepCollectionEquality()
                .equals(other._apartments, _apartments) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isReserve, isReserve) ||
                other.isReserve == isReserve));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_apartments),
      isError,
      isLoading,
      isReserve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YourReservationState$ImplCopyWith<_$YourReservationState$Impl>
      get copyWith => __$$YourReservationState$ImplCopyWithImpl<
          _$YourReservationState$Impl>(this, _$identity);
}

abstract class _YourReservationState$ implements YourReservationState {
  const factory _YourReservationState$(
      {final List<Apartment> apartments,
      final bool isError,
      final bool isLoading,
      final bool isReserve}) = _$YourReservationState$Impl;

  @override
  List<Apartment> get apartments;
  @override
  bool get isError;
  @override
  bool get isLoading;
  @override
  bool get isReserve;
  @override
  @JsonKey(ignore: true)
  _$$YourReservationState$ImplCopyWith<_$YourReservationState$Impl>
      get copyWith => throw _privateConstructorUsedError;
}
