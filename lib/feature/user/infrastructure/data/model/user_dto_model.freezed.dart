// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDTOModel _$UserDTOModelFromJson(Map<String, dynamic> json) {
  return _UserDTOModel.fromJson(json);
}

/// @nodoc
mixin _$UserDTOModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  CompanyDTOModel get company => throw _privateConstructorUsedError;
  AddressDTOModel get address => throw _privateConstructorUsedError;

  /// Serializes this UserDTOModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDTOModelCopyWith<UserDTOModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOModelCopyWith<$Res> {
  factory $UserDTOModelCopyWith(
          UserDTOModel value, $Res Function(UserDTOModel) then) =
      _$UserDTOModelCopyWithImpl<$Res, UserDTOModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website,
      CompanyDTOModel company,
      AddressDTOModel address});

  $CompanyDTOModelCopyWith<$Res> get company;
  $AddressDTOModelCopyWith<$Res> get address;
}

/// @nodoc
class _$UserDTOModelCopyWithImpl<$Res, $Val extends UserDTOModel>
    implements $UserDTOModelCopyWith<$Res> {
  _$UserDTOModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? company = null,
    Object? address = null,
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
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDTOModel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDTOModel,
    ) as $Val);
  }

  /// Create a copy of UserDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyDTOModelCopyWith<$Res> get company {
    return $CompanyDTOModelCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  /// Create a copy of UserDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDTOModelCopyWith<$Res> get address {
    return $AddressDTOModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDTOModelImplCopyWith<$Res>
    implements $UserDTOModelCopyWith<$Res> {
  factory _$$UserDTOModelImplCopyWith(
          _$UserDTOModelImpl value, $Res Function(_$UserDTOModelImpl) then) =
      __$$UserDTOModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website,
      CompanyDTOModel company,
      AddressDTOModel address});

  @override
  $CompanyDTOModelCopyWith<$Res> get company;
  @override
  $AddressDTOModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$UserDTOModelImplCopyWithImpl<$Res>
    extends _$UserDTOModelCopyWithImpl<$Res, _$UserDTOModelImpl>
    implements _$$UserDTOModelImplCopyWith<$Res> {
  __$$UserDTOModelImplCopyWithImpl(
      _$UserDTOModelImpl _value, $Res Function(_$UserDTOModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? company = null,
    Object? address = null,
  }) {
    return _then(_$UserDTOModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDTOModel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDTOModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDTOModelImpl implements _UserDTOModel {
  const _$UserDTOModelImpl(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website,
      required this.company,
      required this.address});

  factory _$UserDTOModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDTOModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;
  @override
  final CompanyDTOModel company;
  @override
  final AddressDTOModel address;

  @override
  String toString() {
    return 'UserDTOModel(id: $id, name: $name, username: $username, email: $email, phone: $phone, website: $website, company: $company, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDTOModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, username, email, phone, website, company, address);

  /// Create a copy of UserDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDTOModelImplCopyWith<_$UserDTOModelImpl> get copyWith =>
      __$$UserDTOModelImplCopyWithImpl<_$UserDTOModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDTOModelImplToJson(
      this,
    );
  }
}

abstract class _UserDTOModel implements UserDTOModel {
  const factory _UserDTOModel(
      {required final int id,
      required final String name,
      required final String username,
      required final String email,
      required final String phone,
      required final String website,
      required final CompanyDTOModel company,
      required final AddressDTOModel address}) = _$UserDTOModelImpl;

  factory _UserDTOModel.fromJson(Map<String, dynamic> json) =
      _$UserDTOModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get website;
  @override
  CompanyDTOModel get company;
  @override
  AddressDTOModel get address;

  /// Create a copy of UserDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDTOModelImplCopyWith<_$UserDTOModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyDTOModel _$CompanyDTOModelFromJson(Map<String, dynamic> json) {
  return _CompanyDTOModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyDTOModel {
  String get name => throw _privateConstructorUsedError;
  String get catchPhrase => throw _privateConstructorUsedError;
  String get bs => throw _privateConstructorUsedError;

  /// Serializes this CompanyDTOModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyDTOModelCopyWith<CompanyDTOModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDTOModelCopyWith<$Res> {
  factory $CompanyDTOModelCopyWith(
          CompanyDTOModel value, $Res Function(CompanyDTOModel) then) =
      _$CompanyDTOModelCopyWithImpl<$Res, CompanyDTOModel>;
  @useResult
  $Res call({String name, String catchPhrase, String bs});
}

/// @nodoc
class _$CompanyDTOModelCopyWithImpl<$Res, $Val extends CompanyDTOModel>
    implements $CompanyDTOModelCopyWith<$Res> {
  _$CompanyDTOModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? catchPhrase = null,
    Object? bs = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhrase: null == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      bs: null == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyDTOModelImplCopyWith<$Res>
    implements $CompanyDTOModelCopyWith<$Res> {
  factory _$$CompanyDTOModelImplCopyWith(_$CompanyDTOModelImpl value,
          $Res Function(_$CompanyDTOModelImpl) then) =
      __$$CompanyDTOModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String catchPhrase, String bs});
}

/// @nodoc
class __$$CompanyDTOModelImplCopyWithImpl<$Res>
    extends _$CompanyDTOModelCopyWithImpl<$Res, _$CompanyDTOModelImpl>
    implements _$$CompanyDTOModelImplCopyWith<$Res> {
  __$$CompanyDTOModelImplCopyWithImpl(
      _$CompanyDTOModelImpl _value, $Res Function(_$CompanyDTOModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? catchPhrase = null,
    Object? bs = null,
  }) {
    return _then(_$CompanyDTOModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhrase: null == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      bs: null == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDTOModelImpl implements _CompanyDTOModel {
  const _$CompanyDTOModelImpl(
      {required this.name, required this.catchPhrase, required this.bs});

  factory _$CompanyDTOModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDTOModelImplFromJson(json);

  @override
  final String name;
  @override
  final String catchPhrase;
  @override
  final String bs;

  @override
  String toString() {
    return 'CompanyDTOModel(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDTOModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.bs, bs) || other.bs == bs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, catchPhrase, bs);

  /// Create a copy of CompanyDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDTOModelImplCopyWith<_$CompanyDTOModelImpl> get copyWith =>
      __$$CompanyDTOModelImplCopyWithImpl<_$CompanyDTOModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDTOModelImplToJson(
      this,
    );
  }
}

abstract class _CompanyDTOModel implements CompanyDTOModel {
  const factory _CompanyDTOModel(
      {required final String name,
      required final String catchPhrase,
      required final String bs}) = _$CompanyDTOModelImpl;

  factory _CompanyDTOModel.fromJson(Map<String, dynamic> json) =
      _$CompanyDTOModelImpl.fromJson;

  @override
  String get name;
  @override
  String get catchPhrase;
  @override
  String get bs;

  /// Create a copy of CompanyDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyDTOModelImplCopyWith<_$CompanyDTOModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDTOModel _$AddressDTOModelFromJson(Map<String, dynamic> json) {
  return _AddressDTOModel.fromJson(json);
}

/// @nodoc
mixin _$AddressDTOModel {
  String get street => throw _privateConstructorUsedError;
  String get suite => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'zipcode')
  String get zipCode => throw _privateConstructorUsedError;

  /// Serializes this AddressDTOModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressDTOModelCopyWith<AddressDTOModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDTOModelCopyWith<$Res> {
  factory $AddressDTOModelCopyWith(
          AddressDTOModel value, $Res Function(AddressDTOModel) then) =
      _$AddressDTOModelCopyWithImpl<$Res, AddressDTOModel>;
  @useResult
  $Res call(
      {String street,
      String suite,
      String city,
      @JsonKey(name: 'zipcode') String zipCode});
}

/// @nodoc
class _$AddressDTOModelCopyWithImpl<$Res, $Val extends AddressDTOModel>
    implements $AddressDTOModelCopyWith<$Res> {
  _$AddressDTOModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDTOModelImplCopyWith<$Res>
    implements $AddressDTOModelCopyWith<$Res> {
  factory _$$AddressDTOModelImplCopyWith(_$AddressDTOModelImpl value,
          $Res Function(_$AddressDTOModelImpl) then) =
      __$$AddressDTOModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String street,
      String suite,
      String city,
      @JsonKey(name: 'zipcode') String zipCode});
}

/// @nodoc
class __$$AddressDTOModelImplCopyWithImpl<$Res>
    extends _$AddressDTOModelCopyWithImpl<$Res, _$AddressDTOModelImpl>
    implements _$$AddressDTOModelImplCopyWith<$Res> {
  __$$AddressDTOModelImplCopyWithImpl(
      _$AddressDTOModelImpl _value, $Res Function(_$AddressDTOModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_$AddressDTOModelImpl(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDTOModelImpl implements _AddressDTOModel {
  const _$AddressDTOModelImpl(
      {required this.street,
      required this.suite,
      required this.city,
      @JsonKey(name: 'zipcode') required this.zipCode});

  factory _$AddressDTOModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDTOModelImplFromJson(json);

  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  @JsonKey(name: 'zipcode')
  final String zipCode;

  @override
  String toString() {
    return 'AddressDTOModel(street: $street, suite: $suite, city: $city, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDTOModelImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.suite, suite) || other.suite == suite) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, street, suite, city, zipCode);

  /// Create a copy of AddressDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDTOModelImplCopyWith<_$AddressDTOModelImpl> get copyWith =>
      __$$AddressDTOModelImplCopyWithImpl<_$AddressDTOModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDTOModelImplToJson(
      this,
    );
  }
}

abstract class _AddressDTOModel implements AddressDTOModel {
  const factory _AddressDTOModel(
          {required final String street,
          required final String suite,
          required final String city,
          @JsonKey(name: 'zipcode') required final String zipCode}) =
      _$AddressDTOModelImpl;

  factory _AddressDTOModel.fromJson(Map<String, dynamic> json) =
      _$AddressDTOModelImpl.fromJson;

  @override
  String get street;
  @override
  String get suite;
  @override
  String get city;
  @override
  @JsonKey(name: 'zipcode')
  String get zipCode;

  /// Create a copy of AddressDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressDTOModelImplCopyWith<_$AddressDTOModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoDTOModel _$GeoDTOModelFromJson(Map<String, dynamic> json) {
  return _GeoDTOModel.fromJson(json);
}

/// @nodoc
mixin _$GeoDTOModel {
  @JsonKey(fromJson: _stringToDouble)
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _stringToDouble)
  double get long => throw _privateConstructorUsedError;

  /// Serializes this GeoDTOModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoDTOModelCopyWith<GeoDTOModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoDTOModelCopyWith<$Res> {
  factory $GeoDTOModelCopyWith(
          GeoDTOModel value, $Res Function(GeoDTOModel) then) =
      _$GeoDTOModelCopyWithImpl<$Res, GeoDTOModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToDouble) double lat,
      @JsonKey(fromJson: _stringToDouble) double long});
}

/// @nodoc
class _$GeoDTOModelCopyWithImpl<$Res, $Val extends GeoDTOModel>
    implements $GeoDTOModelCopyWith<$Res> {
  _$GeoDTOModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoDTOModelImplCopyWith<$Res>
    implements $GeoDTOModelCopyWith<$Res> {
  factory _$$GeoDTOModelImplCopyWith(
          _$GeoDTOModelImpl value, $Res Function(_$GeoDTOModelImpl) then) =
      __$$GeoDTOModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToDouble) double lat,
      @JsonKey(fromJson: _stringToDouble) double long});
}

/// @nodoc
class __$$GeoDTOModelImplCopyWithImpl<$Res>
    extends _$GeoDTOModelCopyWithImpl<$Res, _$GeoDTOModelImpl>
    implements _$$GeoDTOModelImplCopyWith<$Res> {
  __$$GeoDTOModelImplCopyWithImpl(
      _$GeoDTOModelImpl _value, $Res Function(_$GeoDTOModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$GeoDTOModelImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoDTOModelImpl implements _GeoDTOModel {
  const _$GeoDTOModelImpl(
      {@JsonKey(fromJson: _stringToDouble) required this.lat,
      @JsonKey(fromJson: _stringToDouble) required this.long});

  factory _$GeoDTOModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoDTOModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _stringToDouble)
  final double lat;
  @override
  @JsonKey(fromJson: _stringToDouble)
  final double long;

  @override
  String toString() {
    return 'GeoDTOModel(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoDTOModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  /// Create a copy of GeoDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoDTOModelImplCopyWith<_$GeoDTOModelImpl> get copyWith =>
      __$$GeoDTOModelImplCopyWithImpl<_$GeoDTOModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoDTOModelImplToJson(
      this,
    );
  }
}

abstract class _GeoDTOModel implements GeoDTOModel {
  const factory _GeoDTOModel(
          {@JsonKey(fromJson: _stringToDouble) required final double lat,
          @JsonKey(fromJson: _stringToDouble) required final double long}) =
      _$GeoDTOModelImpl;

  factory _GeoDTOModel.fromJson(Map<String, dynamic> json) =
      _$GeoDTOModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _stringToDouble)
  double get lat;
  @override
  @JsonKey(fromJson: _stringToDouble)
  double get long;

  /// Create a copy of GeoDTOModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoDTOModelImplCopyWith<_$GeoDTOModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
