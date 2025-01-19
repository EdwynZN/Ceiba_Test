import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:ceiba_test/feature/user/domain/model/user_with_posts_read_model.dart';

abstract interface class UserReadRepository {
  const UserReadRepository();

  Future<List<UserReadModel>> getUsers({String? name});

  Future<UserWithPostsReadModel> getUserWithPosts(int userId);
}
