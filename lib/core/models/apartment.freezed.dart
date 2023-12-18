// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Apartment _$ApartmentFromJson(Map<String, dynamic> json) {
  return _Apartment.fromJson(json);
}

/// @nodoc
mixin _$Apartment {
  String get name => throw _privateConstructorUsedError;
  String get apartmentId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get rooms => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  @TimestampListConverter()
  List<DateTime> get selectedDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApartmentCopyWith<Apartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApartmentCopyWith<$Res> {
  factory $ApartmentCopyWith(Apartment value, $Res Function(Apartment) then) =
      _$ApartmentCopyWithImpl<$Res, Apartment>;
  @useResult
  $Res call(
      {String name,
      String apartmentId,
      String description,
      String location,
      int rooms,
      double price,
      List<String> photos,
      @TimestampListConverter() List<DateTime> selectedDays});
}

/// @nodoc
class _$ApartmentCopyWithImpl<$Res, $Val extends Apartment>
    implements $ApartmentCopyWith<$Res> {
  _$ApartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? apartmentId = null,
    Object? description = null,
    Object? location = null,
    Object? rooms = null,
    Object? price = null,
    Object? photos = null,
    Object? selectedDays = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apartmentId: null == apartmentId
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedDays: null == selectedDays
          ? _value.selectedDays
          : selectedDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApartmentImplCopyWith<$Res>
    implements $ApartmentCopyWith<$Res> {
  factory _$$ApartmentImplCopyWith(
          _$ApartmentImpl value, $Res Function(_$ApartmentImpl) then) =
      __$$ApartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String apartmentId,
      String description,
      String location,
      int rooms,
      double price,
      List<String> photos,
      @TimestampListConverter() List<DateTime> selectedDays});
}

/// @nodoc
class __$$ApartmentImplCopyWithImpl<$Res>
    extends _$ApartmentCopyWithImpl<$Res, _$ApartmentImpl>
    implements _$$ApartmentImplCopyWith<$Res> {
  __$$ApartmentImplCopyWithImpl(
      _$ApartmentImpl _value, $Res Function(_$ApartmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? apartmentId = null,
    Object? description = null,
    Object? location = null,
    Object? rooms = null,
    Object? price = null,
    Object? photos = null,
    Object? selectedDays = null,
  }) {
    return _then(_$ApartmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apartmentId: null == apartmentId
          ? _value.apartmentId
          : apartmentId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedDays: null == selectedDays
          ? _value._selectedDays
          : selectedDays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApartmentImpl implements _Apartment {
  const _$ApartmentImpl(
      {required this.name,
      required this.apartmentId,
      required this.description,
      required this.location,
      required this.rooms,
      required this.price,
      required final List<String> photos,
      @TimestampListConverter() required final List<DateTime> selectedDays})
      : _photos = photos,
        _selectedDays = selectedDays;

  factory _$ApartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApartmentImplFromJson(json);

  @override
  final String name;
  @override
  final String apartmentId;
  @override
  final String description;
  @override
  final String location;
  @override
  final int rooms;
  @override
  final double price;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  final List<DateTime> _selectedDays;
  @override
  @TimestampListConverter()
  List<DateTime> get selectedDays {
    if (_selectedDays is EqualUnmodifiableListView) return _selectedDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedDays);
  }

  @override
  String toString() {
    return 'Apartment(name: $name, apartmentId: $apartmentId, description: $description, location: $location, rooms: $rooms, price: $price, photos: $photos, selectedDays: $selectedDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApartmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apartmentId, apartmentId) ||
                other.apartmentId == apartmentId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality()
                .equals(other._selectedDays, _selectedDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      apartmentId,
      description,
      location,
      rooms,
      price,
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(_selectedDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApartmentImplCopyWith<_$ApartmentImpl> get copyWith =>
      __$$ApartmentImplCopyWithImpl<_$ApartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApartmentImplToJson(
      this,
    );
  }
}

abstract class _Apartment implements Apartment {
  const factory _Apartment(
      {required final String name,
      required final String apartmentId,
      required final String description,
      required final String location,
      required final int rooms,
      required final double price,
      required final List<String> photos,
      @TimestampListConverter()
      required final List<DateTime> selectedDays}) = _$ApartmentImpl;

  factory _Apartment.fromJson(Map<String, dynamic> json) =
      _$ApartmentImpl.fromJson;

  @override
  String get name;
  @override
  String get apartmentId;
  @override
  String get description;
  @override
  String get location;
  @override
  int get rooms;
  @override
  double get price;
  @override
  List<String> get photos;
  @override
  @TimestampListConverter()
  List<DateTime> get selectedDays;
  @override
  @JsonKey(ignore: true)
  _$$ApartmentImplCopyWith<_$ApartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
