import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto_model.freezed.dart';
part 'user_dto_model.g.dart';

@freezed
class UserDTOModel with _$UserDTOModel {
  const factory UserDTOModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    required CompanyDTOModel company,
    required AddressDTOModel address,
  }) = _UserDTOModel;

  factory UserDTOModel.fromJson(Map<String, dynamic> json) =>
      _$UserDTOModelFromJson(json);
}

@freezed
class CompanyDTOModel with _$CompanyDTOModel {
  const factory CompanyDTOModel({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _CompanyDTOModel;

  factory CompanyDTOModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyDTOModelFromJson(json);
}

@freezed
class AddressDTOModel with _$AddressDTOModel {
  const factory AddressDTOModel({
    required String street,
    required String suite,
    required String city,
    @JsonKey(name: 'zipcode') required String zipCode,
  }) = _AddressDTOModel;

  factory AddressDTOModel.fromJson(Map<String, dynamic> json) =>
      _$AddressDTOModelFromJson(json);
}

@freezed
class GeoDTOModel with _$GeoDTOModel {
  const factory GeoDTOModel({
    @JsonKey(fromJson: _stringToDouble) required double lat,
    @JsonKey(fromJson: _stringToDouble) required double long,
  }) = _GeoDTOModel;

  factory GeoDTOModel.fromJson(Map<String, dynamic> json) =>
      _$GeoDTOModelFromJson(json);
}

double _stringToDouble(dynamic value) =>
    value is String ? double.parse(value) : value as double;

extension UserDtoModelMapper on UserDTOModel {
  UserReadModel get toReadModel => UserReadModel(
        id: id,
        name: name,
        phone: phone,
        email: email,
      );
}
