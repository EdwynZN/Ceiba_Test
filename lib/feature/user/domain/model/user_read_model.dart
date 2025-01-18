import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_read_model.freezed.dart';

@freezed
class UserReadModel with _$UserReadModel {
  const factory UserReadModel({
    required int id,
    required String name,
    required String phone,
    required String email,
  }) = _UserReadModel;
	
}
