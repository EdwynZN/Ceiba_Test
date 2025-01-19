import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_dto_model.freezed.dart';
part 'post_dto_model.g.dart';

@freezed
class PostDTOModel with _$PostDTOModel {
  const factory PostDTOModel({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostDTOModel;
	
  factory PostDTOModel.fromJson(Map<String, dynamic> json) =>
			_$PostDTOModelFromJson(json);
}
