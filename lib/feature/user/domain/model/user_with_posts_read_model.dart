import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_with_posts_read_model.freezed.dart';

@freezed
class UserWithPostsReadModel with _$UserWithPostsReadModel {
  const factory UserWithPostsReadModel({
    required int id,
    required String name,
    required String phone,
    required String email,
    required List<PostReadModel> posts,
  }) = _UserWithPostsReadModel;
	
}

@freezed
class PostReadModel with _$PostReadModel {
  const factory PostReadModel({
    required int id,
    required String title,
    required String body,
  }) = _PostReadModel;
}
