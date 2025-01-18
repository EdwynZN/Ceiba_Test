import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';

// It will have more methods in the future
// ignore: one_member_abstracts
abstract interface class UserReadRepository {
  const UserReadRepository();

  Future<List<UserReadModel>> getUsers({String? name});
}
