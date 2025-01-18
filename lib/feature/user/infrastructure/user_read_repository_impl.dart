import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:ceiba_test/feature/user/domain/repository/user_read_repository.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/model/user_dto_model.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/user_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_read_repository_impl.g.dart';

@riverpod
UserReadRepository userReadRepository(Ref ref) {
  final userApi = ref.watch(userApiProvider);
  return UserReadRepositoryImpl(userApi);
}

class UserReadRepositoryImpl implements UserReadRepository {
  UserReadRepositoryImpl(this._userApi);

  final UserApi _userApi;

  @override
  Future<List<UserReadModel>> getUsers({String? name}) async {
    final users = await _userApi.getUsers();
    return users.map((u) => u.toReadModel).toList();
  }
}
