import 'package:ceiba_test/common/drift_sqlite/drift_database.dart';
import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/model/user_dto_model.dart';
import 'package:drift/drift.dart';

part 'user_dao.g.dart';

@DriftAccessor(
  include: {'../../../../common/drift_sqlite/table/user_table.drift'},
)
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(super.db);

  Future<List<UserReadModel>> fetchAll({String? name}) async {
    final query = select(user);

    if (name != null && name.isNotEmpty) {
      query.where((user) => user.name.contains(name));
    }
    final result = await query.map((singleUser) {
      return UserReadModel(
        id: singleUser.id,
        email: singleUser.email,
        name: singleUser.name,
        phone: singleUser.phone,
      );
    }).get();
    return result;
  }

  Future<List<UserDTOModel>> fetchAllWithAddressAndCompany({
    String? name,
  }) async {
    final query = select(user).join(
      [
        leftOuterJoin(address, address.userId.equalsExp(user.id)),
        leftOuterJoin(company, company.userId.equalsExp(user.id)),
      ],
    );

    if (name != null && name.isNotEmpty) {
      query.where(user.name.contains(name));
    }
    final result = await query.map((p0) {
      final singleUser = p0.readTable(user);
      final singleAddress = p0.readTable(address);
      final singleCompany = p0.readTable(company);
      return UserDTOModel(
        id: singleUser.id,
        email: singleUser.email,
        name: singleUser.name,
        phone: singleUser.phone,
        username: singleUser.username,
        website: singleUser.website,
        address: AddressDTOModel(
          street: singleAddress.street,
          suite: singleAddress.suite,
          city: singleAddress.city,
          geo: GeoDTOModel(lat: singleAddress.lat, long: singleAddress.long),
          zipCode: singleAddress.zipCode,
        ),
        company: CompanyDTOModel(
          name: singleCompany.name,
          catchPhrase: singleCompany.catchPhrase,
          bs: singleCompany.bs,
        ),
      );
    }).get();
    return result;
  }

  Future<void> insertAll({
    required List<UserTable> users,
    required List<AddressCompanion> addresses,
    required List<CompanyCompanion> companies,
  }) async {
    await batch((batch) {
      batch
        ..insertAll(user, users, mode: InsertMode.insertOrReplace)
        ..insertAll(address, addresses, mode: InsertMode.insertOrReplace)
        ..insertAll(company, companies, mode: InsertMode.insertOrReplace);
    });
  }
}
