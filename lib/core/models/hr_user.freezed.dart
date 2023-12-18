// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hr_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HrUser _$HrUserFromJson(Map<String, dynamic> json) {
  return _HrUser.fromJson(json);
}

/// @nodoc
mixin _$HrUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  List<String> get reservations => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get lastLoginAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HrUserCopyWith<HrUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrUserCopyWith<$Res> {
  factory $HrUserCopyWith(HrUser value, $Res Function(HrUser) then) =
      _$HrUserCopyWithImpl<$Res, HrUser>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      bool isAdmin,
      List<String> reservations,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime lastLoginAt});
}

/// @nodoc
class _$HrUserCopyWithImpl<$Res, $Val extends HrUser>
    implements $HrUserCopyWith<$Res> {
  _$HrUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? isAdmin = null,
    Object? reservations = null,
    Object? createdAt = null,
    Object? lastLoginAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      reservations: null == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: null == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HrUserImplCopyWith<$Res> implements $HrUserCopyWith<$Res> {
  factory _$$HrUserImplCopyWith(
          _$HrUserImpl value, $Res Function(_$HrUserImpl) then) =
      __$$HrUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      bool isAdmin,
      List<String> reservations,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime lastLoginAt});
}

/// @nodoc
class __$$HrUserImplCopyWithImpl<$Res>
    extends _$HrUserCopyWithImpl<$Res, _$HrUserImpl>
    implements _$$HrUserImplCopyWith<$Res> {
  __$$HrUserImplCopyWithImpl(
      _$HrUserImpl _value, $Res Function(_$HrUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? isAdmin = null,
    Object? reservations = null,
    Object? createdAt = null,
    Object? lastLoginAt = null,
  }) {
    return _then(_$HrUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      reservations: null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: null == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HrUserImpl implements _HrUser {
  const _$HrUserImpl(
      {required this.id,
      required this.name,
      required this.email,
      this.isAdmin = false,
      final List<String> reservations = const [],
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() required this.lastLoginAt})
      : _reservations = reservations;

  factory _$HrUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$HrUserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey()
  final bool isAdmin;
  final List<String> _reservations;
  @override
  @JsonKey()
  List<String> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @TimestampConverter()
  final DateTime lastLoginAt;

  @override
  String toString() {
    return 'HrUser(id: $id, name: $name, email: $email, isAdmin: $isAdmin, reservations: $reservations, createdAt: $createdAt, lastLoginAt: $lastLoginAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HrUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      isAdmin,
      const DeepCollectionEquality().hash(_reservations),
      createdAt,
      lastLoginAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HrUserImplCopyWith<_$HrUserImpl> get copyWith =>
      __$$HrUserImplCopyWithImpl<_$HrUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HrUserImplToJson(
      this,
    );
  }
}

abstract class _HrUser implements HrUser {
  const factory _HrUser(
          {required final String id,
          required final String name,
          required final String email,
          final bool isAdmin,
          final List<String> reservations,
          @TimestampConverter() required final DateTime createdAt,
          @TimestampConverter() required final DateTime lastLoginAt}) =
      _$HrUserImpl;

  factory _HrUser.fromJson(Map<String, dynamic> json) = _$HrUserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  bool get isAdmin;
  @override
  List<String> get reservations;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @TimestampConverter()
  DateTime get lastLoginAt;
  @override
  @JsonKey(ignore: true)
  _$$HrUserImplCopyWith<_$HrUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
