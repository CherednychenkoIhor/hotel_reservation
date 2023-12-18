// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile photo) addPhoto,
    required TResult Function() clear,
    required TResult Function(Apartment apartment) addApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile photo)? addPhoto,
    TResult? Function()? clear,
    TResult? Function(Apartment apartment)? addApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile photo)? addPhoto,
    TResult Function()? clear,
    TResult Function(Apartment apartment)? addApartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_Clear value) clear,
    required TResult Function(_AddApartment value) addApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPhoto value)? addPhoto,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_AddApartment value)? addApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_Clear value)? clear,
    TResult Function(_AddApartment value)? addApartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddPhotoImplCopyWith<$Res> {
  factory _$$AddPhotoImplCopyWith(
          _$AddPhotoImpl value, $Res Function(_$AddPhotoImpl) then) =
      __$$AddPhotoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile photo});
}

/// @nodoc
class __$$AddPhotoImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddPhotoImpl>
    implements _$$AddPhotoImplCopyWith<$Res> {
  __$$AddPhotoImplCopyWithImpl(
      _$AddPhotoImpl _value, $Res Function(_$AddPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$AddPhotoImpl(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$AddPhotoImpl implements _AddPhoto {
  const _$AddPhotoImpl({required this.photo});

  @override
  final XFile photo;

  @override
  String toString() {
    return 'HomeEvent.addPhoto(photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPhotoImpl &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPhotoImplCopyWith<_$AddPhotoImpl> get copyWith =>
      __$$AddPhotoImplCopyWithImpl<_$AddPhotoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile photo) addPhoto,
    required TResult Function() clear,
    required TResult Function(Apartment apartment) addApartment,
  }) {
    return addPhoto(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile photo)? addPhoto,
    TResult? Function()? clear,
    TResult? Function(Apartment apartment)? addApartment,
  }) {
    return addPhoto?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile photo)? addPhoto,
    TResult Function()? clear,
    TResult Function(Apartment apartment)? addApartment,
    required TResult orElse(),
  }) {
    if (addPhoto != null) {
      return addPhoto(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_Clear value) clear,
    required TResult Function(_AddApartment value) addApartment,
  }) {
    return addPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPhoto value)? addPhoto,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_AddApartment value)? addApartment,
  }) {
    return addPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_Clear value)? clear,
    TResult Function(_AddApartment value)? addApartment,
    required TResult orElse(),
  }) {
    if (addPhoto != null) {
      return addPhoto(this);
    }
    return orElse();
  }
}

abstract class _AddPhoto implements HomeEvent {
  const factory _AddPhoto({required final XFile photo}) = _$AddPhotoImpl;

  XFile get photo;
  @JsonKey(ignore: true)
  _$$AddPhotoImplCopyWith<_$AddPhotoImpl> get copyWith =>
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
    extends _$HomeEventCopyWithImpl<$Res, _$ClearImpl>
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
    return 'HomeEvent.clear()';
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
    required TResult Function(XFile photo) addPhoto,
    required TResult Function() clear,
    required TResult Function(Apartment apartment) addApartment,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile photo)? addPhoto,
    TResult? Function()? clear,
    TResult? Function(Apartment apartment)? addApartment,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile photo)? addPhoto,
    TResult Function()? clear,
    TResult Function(Apartment apartment)? addApartment,
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
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_Clear value) clear,
    required TResult Function(_AddApartment value) addApartment,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPhoto value)? addPhoto,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_AddApartment value)? addApartment,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_Clear value)? clear,
    TResult Function(_AddApartment value)? addApartment,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements HomeEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$AddApartmentImplCopyWith<$Res> {
  factory _$$AddApartmentImplCopyWith(
          _$AddApartmentImpl value, $Res Function(_$AddApartmentImpl) then) =
      __$$AddApartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Apartment apartment});

  $ApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class __$$AddApartmentImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddApartmentImpl>
    implements _$$AddApartmentImplCopyWith<$Res> {
  __$$AddApartmentImplCopyWithImpl(
      _$AddApartmentImpl _value, $Res Function(_$AddApartmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apartment = null,
  }) {
    return _then(_$AddApartmentImpl(
      apartment: null == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as Apartment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApartmentCopyWith<$Res> get apartment {
    return $ApartmentCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc

class _$AddApartmentImpl implements _AddApartment {
  const _$AddApartmentImpl({required this.apartment});

  @override
  final Apartment apartment;

  @override
  String toString() {
    return 'HomeEvent.addApartment(apartment: $apartment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddApartmentImpl &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apartment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddApartmentImplCopyWith<_$AddApartmentImpl> get copyWith =>
      __$$AddApartmentImplCopyWithImpl<_$AddApartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile photo) addPhoto,
    required TResult Function() clear,
    required TResult Function(Apartment apartment) addApartment,
  }) {
    return addApartment(apartment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile photo)? addPhoto,
    TResult? Function()? clear,
    TResult? Function(Apartment apartment)? addApartment,
  }) {
    return addApartment?.call(apartment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile photo)? addPhoto,
    TResult Function()? clear,
    TResult Function(Apartment apartment)? addApartment,
    required TResult orElse(),
  }) {
    if (addApartment != null) {
      return addApartment(apartment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_Clear value) clear,
    required TResult Function(_AddApartment value) addApartment,
  }) {
    return addApartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPhoto value)? addPhoto,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_AddApartment value)? addApartment,
  }) {
    return addApartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_Clear value)? clear,
    TResult Function(_AddApartment value)? addApartment,
    required TResult orElse(),
  }) {
    if (addApartment != null) {
      return addApartment(this);
    }
    return orElse();
  }
}

abstract class _AddApartment implements HomeEvent {
  const factory _AddApartment({required final Apartment apartment}) =
      _$AddApartmentImpl;

  Apartment get apartment;
  @JsonKey(ignore: true)
  _$$AddApartmentImplCopyWith<_$AddApartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<XFile> get photos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<XFile> photos, bool isLoading, bool isSaved});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? isLoading = null,
    Object? isSaved = null,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile> photos, bool isLoading, bool isSaved});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? isLoading = null,
    Object? isSaved = null,
  }) {
    return _then(_$HomeStateImpl(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<XFile> photos = const [],
      this.isLoading = false,
      this.isSaved = false})
      : _photos = photos;

  final List<XFile> _photos;
  @override
  @JsonKey()
  List<XFile> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSaved;

  @override
  String toString() {
    return 'HomeState(photos: $photos, isLoading: $isLoading, isSaved: $isSaved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_photos), isLoading, isSaved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<XFile> photos,
      final bool isLoading,
      final bool isSaved}) = _$HomeStateImpl;

  @override
  List<XFile> get photos;
  @override
  bool get isLoading;
  @override
  bool get isSaved;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
