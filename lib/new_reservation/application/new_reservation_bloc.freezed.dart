// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)
        fetchApartments,
    required TResult Function(Reservation reservation, HrUser user)
        reserveApartments,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)?
        fetchApartments,
    TResult? Function(Reservation reservation, HrUser user)? reserveApartments,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)?
        fetchApartments,
    TResult Function(Reservation reservation, HrUser user)? reserveApartments,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchApartments value) fetchApartments,
    required TResult Function(_ReserveApartments value) reserveApartments,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchApartments value)? fetchApartments,
    TResult? Function(_ReserveApartments value)? reserveApartments,
    TResult? Function(_Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchApartments value)? fetchApartments,
    TResult Function(_ReserveApartments value)? reserveApartments,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReservationEventCopyWith<$Res> {
  factory $NewReservationEventCopyWith(
          NewReservationEvent value, $Res Function(NewReservationEvent) then) =
      _$NewReservationEventCopyWithImpl<$Res, NewReservationEvent>;
}

/// @nodoc
class _$NewReservationEventCopyWithImpl<$Res, $Val extends NewReservationEvent>
    implements $NewReservationEventCopyWith<$Res> {
  _$NewReservationEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call(
      {int? minRooms,
      int? maxRooms,
      double? minPrice,
      double? maxPrice,
      String? name});
}

/// @nodoc
class __$$FetchApartmentsImplCopyWithImpl<$Res>
    extends _$NewReservationEventCopyWithImpl<$Res, _$FetchApartmentsImpl>
    implements _$$FetchApartmentsImplCopyWith<$Res> {
  __$$FetchApartmentsImplCopyWithImpl(
      _$FetchApartmentsImpl _value, $Res Function(_$FetchApartmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minRooms = freezed,
    Object? maxRooms = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? name = freezed,
  }) {
    return _then(_$FetchApartmentsImpl(
      minRooms: freezed == minRooms
          ? _value.minRooms
          : minRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRooms: freezed == maxRooms
          ? _value.maxRooms
          : maxRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchApartmentsImpl implements _FetchApartments {
  const _$FetchApartmentsImpl(
      {this.minRooms, this.maxRooms, this.minPrice, this.maxPrice, this.name});

  @override
  final int? minRooms;
  @override
  final int? maxRooms;
  @override
  final double? minPrice;
  @override
  final double? maxPrice;
  @override
  final String? name;

  @override
  String toString() {
    return 'NewReservationEvent.fetchApartments(minRooms: $minRooms, maxRooms: $maxRooms, minPrice: $minPrice, maxPrice: $maxPrice, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchApartmentsImpl &&
            (identical(other.minRooms, minRooms) ||
                other.minRooms == minRooms) &&
            (identical(other.maxRooms, maxRooms) ||
                other.maxRooms == maxRooms) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, minRooms, maxRooms, minPrice, maxPrice, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchApartmentsImplCopyWith<_$FetchApartmentsImpl> get copyWith =>
      __$$FetchApartmentsImplCopyWithImpl<_$FetchApartmentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)
        fetchApartments,
    required TResult Function(Reservation reservation, HrUser user)
        reserveApartments,
    required TResult Function() clear,
  }) {
    return fetchApartments(minRooms, maxRooms, minPrice, maxPrice, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)?
        fetchApartments,
    TResult? Function(Reservation reservation, HrUser user)? reserveApartments,
    TResult? Function()? clear,
  }) {
    return fetchApartments?.call(minRooms, maxRooms, minPrice, maxPrice, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)?
        fetchApartments,
    TResult Function(Reservation reservation, HrUser user)? reserveApartments,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (fetchApartments != null) {
      return fetchApartments(minRooms, maxRooms, minPrice, maxPrice, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchApartments value) fetchApartments,
    required TResult Function(_ReserveApartments value) reserveApartments,
    required TResult Function(_Clear value) clear,
  }) {
    return fetchApartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchApartments value)? fetchApartments,
    TResult? Function(_ReserveApartments value)? reserveApartments,
    TResult? Function(_Clear value)? clear,
  }) {
    return fetchApartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchApartments value)? fetchApartments,
    TResult Function(_ReserveApartments value)? reserveApartments,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (fetchApartments != null) {
      return fetchApartments(this);
    }
    return orElse();
  }
}

abstract class _FetchApartments implements NewReservationEvent {
  const factory _FetchApartments(
      {final int? minRooms,
      final int? maxRooms,
      final double? minPrice,
      final double? maxPrice,
      final String? name}) = _$FetchApartmentsImpl;

  int? get minRooms;
  int? get maxRooms;
  double? get minPrice;
  double? get maxPrice;
  String? get name;
  @JsonKey(ignore: true)
  _$$FetchApartmentsImplCopyWith<_$FetchApartmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReserveApartmentsImplCopyWith<$Res> {
  factory _$$ReserveApartmentsImplCopyWith(_$ReserveApartmentsImpl value,
          $Res Function(_$ReserveApartmentsImpl) then) =
      __$$ReserveApartmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reservation reservation, HrUser user});

  $ReservationCopyWith<$Res> get reservation;
  $HrUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ReserveApartmentsImplCopyWithImpl<$Res>
    extends _$NewReservationEventCopyWithImpl<$Res, _$ReserveApartmentsImpl>
    implements _$$ReserveApartmentsImplCopyWith<$Res> {
  __$$ReserveApartmentsImplCopyWithImpl(_$ReserveApartmentsImpl _value,
      $Res Function(_$ReserveApartmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
    Object? user = null,
  }) {
    return _then(_$ReserveApartmentsImpl(
      reservation: null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as HrUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReservationCopyWith<$Res> get reservation {
    return $ReservationCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HrUserCopyWith<$Res> get user {
    return $HrUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ReserveApartmentsImpl implements _ReserveApartments {
  const _$ReserveApartmentsImpl(
      {required this.reservation, required this.user});

  @override
  final Reservation reservation;
  @override
  final HrUser user;

  @override
  String toString() {
    return 'NewReservationEvent.reserveApartments(reservation: $reservation, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReserveApartmentsImpl &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReserveApartmentsImplCopyWith<_$ReserveApartmentsImpl> get copyWith =>
      __$$ReserveApartmentsImplCopyWithImpl<_$ReserveApartmentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)
        fetchApartments,
    required TResult Function(Reservation reservation, HrUser user)
        reserveApartments,
    required TResult Function() clear,
  }) {
    return reserveApartments(reservation, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)?
        fetchApartments,
    TResult? Function(Reservation reservation, HrUser user)? reserveApartments,
    TResult? Function()? clear,
  }) {
    return reserveApartments?.call(reservation, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)?
        fetchApartments,
    TResult Function(Reservation reservation, HrUser user)? reserveApartments,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (reserveApartments != null) {
      return reserveApartments(reservation, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchApartments value) fetchApartments,
    required TResult Function(_ReserveApartments value) reserveApartments,
    required TResult Function(_Clear value) clear,
  }) {
    return reserveApartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchApartments value)? fetchApartments,
    TResult? Function(_ReserveApartments value)? reserveApartments,
    TResult? Function(_Clear value)? clear,
  }) {
    return reserveApartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchApartments value)? fetchApartments,
    TResult Function(_ReserveApartments value)? reserveApartments,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (reserveApartments != null) {
      return reserveApartments(this);
    }
    return orElse();
  }
}

abstract class _ReserveApartments implements NewReservationEvent {
  const factory _ReserveApartments(
      {required final Reservation reservation,
      required final HrUser user}) = _$ReserveApartmentsImpl;

  Reservation get reservation;
  HrUser get user;
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
    extends _$NewReservationEventCopyWithImpl<$Res, _$ClearImpl>
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
    return 'NewReservationEvent.clear()';
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
    required TResult Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)
        fetchApartments,
    required TResult Function(Reservation reservation, HrUser user)
        reserveApartments,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)?
        fetchApartments,
    TResult? Function(Reservation reservation, HrUser user)? reserveApartments,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? minRooms, int? maxRooms, double? minPrice,
            double? maxPrice, String? name)?
        fetchApartments,
    TResult Function(Reservation reservation, HrUser user)? reserveApartments,
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
    required TResult Function(_ReserveApartments value) reserveApartments,
    required TResult Function(_Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchApartments value)? fetchApartments,
    TResult? Function(_ReserveApartments value)? reserveApartments,
    TResult? Function(_Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchApartments value)? fetchApartments,
    TResult Function(_ReserveApartments value)? reserveApartments,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements NewReservationEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$NewReservationState {
  List<Apartment> get apartments => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReserve => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewReservationStateCopyWith<NewReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReservationStateCopyWith<$Res> {
  factory $NewReservationStateCopyWith(
          NewReservationState value, $Res Function(NewReservationState) then) =
      _$NewReservationStateCopyWithImpl<$Res, NewReservationState>;
  @useResult
  $Res call(
      {List<Apartment> apartments,
      bool isError,
      bool isLoading,
      bool isReserve});
}

/// @nodoc
class _$NewReservationStateCopyWithImpl<$Res, $Val extends NewReservationState>
    implements $NewReservationStateCopyWith<$Res> {
  _$NewReservationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$NewReservationState$ImplCopyWith<$Res>
    implements $NewReservationStateCopyWith<$Res> {
  factory _$$NewReservationState$ImplCopyWith(_$NewReservationState$Impl value,
          $Res Function(_$NewReservationState$Impl) then) =
      __$$NewReservationState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Apartment> apartments,
      bool isError,
      bool isLoading,
      bool isReserve});
}

/// @nodoc
class __$$NewReservationState$ImplCopyWithImpl<$Res>
    extends _$NewReservationStateCopyWithImpl<$Res, _$NewReservationState$Impl>
    implements _$$NewReservationState$ImplCopyWith<$Res> {
  __$$NewReservationState$ImplCopyWithImpl(_$NewReservationState$Impl _value,
      $Res Function(_$NewReservationState$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apartments = null,
    Object? isError = null,
    Object? isLoading = null,
    Object? isReserve = null,
  }) {
    return _then(_$NewReservationState$Impl(
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

class _$NewReservationState$Impl implements _NewReservationState$ {
  const _$NewReservationState$Impl(
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
    return 'NewReservationState(apartments: $apartments, isError: $isError, isLoading: $isLoading, isReserve: $isReserve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewReservationState$Impl &&
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
  _$$NewReservationState$ImplCopyWith<_$NewReservationState$Impl>
      get copyWith =>
          __$$NewReservationState$ImplCopyWithImpl<_$NewReservationState$Impl>(
              this, _$identity);
}

abstract class _NewReservationState$ implements NewReservationState {
  const factory _NewReservationState$(
      {final List<Apartment> apartments,
      final bool isError,
      final bool isLoading,
      final bool isReserve}) = _$NewReservationState$Impl;

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
  _$$NewReservationState$ImplCopyWith<_$NewReservationState$Impl>
      get copyWith => throw _privateConstructorUsedError;
}
