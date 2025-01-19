import 'package:ceiba_test/common/drift_sqlite/drift_database.dart';
import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:ceiba_test/feature/user/domain/repository/user_read_repository.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/model/user_dto_model.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/user_api.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/user_dao.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_read_repository_impl.g.dart';

({
  List<UserTable> users,
  List<AddressCompanion> address,
  List<CompanyCompanion> companies,
}) _convertToDB(List<UserDTOModel> users) {
  final usersTable = <UserTable>[];
  final address = <AddressCompanion>[];
  final companies = <CompanyCompanion>[];
  for (final singleUser in users) {
    usersTable.add(
      UserTable(
        id: singleUser.id,
        name: singleUser.name,
        username: singleUser.username,
        email: singleUser.email,
        phone: singleUser.phone,
        website: singleUser.website,
      ),
    );
    final userAddress = singleUser.address;
    final userGeo = singleUser.address.geo;
    address.add(
      AddressCompanion.insert(
        userId: singleUser.id,
        city: userAddress.city,
        street: userAddress.street,
        suite: userAddress.suite,
        zipCode: userAddress.zipCode,
        lat: userGeo.lat,
        long: userGeo.long,
      ),
    );
    final userCompany = singleUser.company;
    companies.add(
      CompanyCompanion.insert(
        userId: singleUser.id,
        bs: userCompany.bs,
        catchPhrase: userCompany.catchPhrase,
        name: userCompany.name,
      ),
    );
  }
  return (users: usersTable, address: address, companies: companies);
}

@riverpod
UserReadRepository userReadRepository(Ref ref) {
  final userApi = ref.watch(userApiProvider);
  final database = ref.watch(appDatabaseProvider);
  return UserReadRepositoryImpl(userApi, database.userDao);
}

class UserReadRepositoryImpl implements UserReadRepository {
  UserReadRepositoryImpl(this._userApi, this._userDao);

  final UserApi _userApi;
  final UserDao _userDao;

  @override
  Future<List<UserReadModel>> getUsers({String? name}) async {
    final local = await _userDao.fetchAll(name: name);
    if (local.isNotEmpty) {
      return local;
    }
    final users = await _userApi.getUsers();
    final converterer = await compute(_convertToDB, users);
    await _userDao.insertAll(
      users: converterer.users,
      addresses: converterer.address,
      companies: converterer.companies,
    );

    return _userDao.fetchAll(name: name);
  }
}
