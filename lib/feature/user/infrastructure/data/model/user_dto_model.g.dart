// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOModelImpl _$$UserDTOModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      website: json['website'] as String,
      company:
          CompanyDTOModel.fromJson(json['company'] as Map<String, dynamic>),
      address:
          AddressDTOModel.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDTOModelImplToJson(_$UserDTOModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company.toJson(),
      'address': instance.address.toJson(),
    };

_$CompanyDTOModelImpl _$$CompanyDTOModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyDTOModelImpl(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );

Map<String, dynamic> _$$CompanyDTOModelImplToJson(
        _$CompanyDTOModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };

_$AddressDTOModelImpl _$$AddressDTOModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDTOModelImpl(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipCode: json['zipcode'] as String,
    );

Map<String, dynamic> _$$AddressDTOModelImplToJson(
        _$AddressDTOModelImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipCode,
    };

_$GeoDTOModelImpl _$$GeoDTOModelImplFromJson(Map<String, dynamic> json) =>
    _$GeoDTOModelImpl(
      lat: _stringToDouble(json['lat']),
      long: _stringToDouble(json['long']),
    );

Map<String, dynamic> _$$GeoDTOModelImplToJson(_$GeoDTOModelImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };
