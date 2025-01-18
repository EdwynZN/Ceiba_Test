// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserReadModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of UserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserReadModelCopyWith<UserReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReadModelCopyWith<$Res> {
  factory $UserReadModelCopyWith(
          UserReadModel value, $Res Function(UserReadModel) then) =
      _$UserReadModelCopyWithImpl<$Res, UserReadModel>;
  @useResult
  $Res call({int id, String name, String phone, String email});
}

/// @nodoc
class _$UserReadModelCopyWithImpl<$Res, $Val extends UserReadModel>
    implements $UserReadModelCopyWith<$Res> {
  _$UserReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserReadModelImplCopyWith<$Res>
    implements $UserReadModelCopyWith<$Res> {
  factory _$$UserReadModelImplCopyWith(
          _$UserReadModelImpl value, $Res Function(_$UserReadModelImpl) then) =
      __$$UserReadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String phone, String email});
}

/// @nodoc
class __$$UserReadModelImplCopyWithImpl<$Res>
    extends _$UserReadModelCopyWithImpl<$Res, _$UserReadModelImpl>
    implements _$$UserReadModelImplCopyWith<$Res> {
  __$$UserReadModelImplCopyWithImpl(
      _$UserReadModelImpl _value, $Res Function(_$UserReadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$UserReadModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserReadModelImpl implements _UserReadModel {
  const _$UserReadModelImpl(
      {required this.id,
      required this.name,
      required this.phone,
      required this.email});

  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'UserReadModel(id: $id, name: $name, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email);

  /// Create a copy of UserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReadModelImplCopyWith<_$UserReadModelImpl> get copyWith =>
      __$$UserReadModelImplCopyWithImpl<_$UserReadModelImpl>(this, _$identity);
}

abstract class _UserReadModel implements UserReadModel {
  const factory _UserReadModel(
      {required final int id,
      required final String name,
      required final String phone,
      required final String email}) = _$UserReadModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get email;

  /// Create a copy of UserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserReadModelImplCopyWith<_$UserReadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
