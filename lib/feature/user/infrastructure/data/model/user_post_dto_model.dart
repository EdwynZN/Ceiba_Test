import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post_dto_model.freezed.dart';
part 'user_post_dto_model.g.dart';

@freezed
class UserPostDTOModel with _$UserPostDTOModel {
  const factory UserPostDTOModel({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _UserPostDTOModel;

  factory UserPostDTOModel.fromJson(Map<String, dynamic> json) =>
      _$UserPostDTOModelFromJson(json);
}
