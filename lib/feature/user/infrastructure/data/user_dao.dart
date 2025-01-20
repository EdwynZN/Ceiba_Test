import 'package:ceiba_test/common/database/drift_database.dart';
import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:ceiba_test/feature/user/domain/model/user_with_posts_read_model.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/model/user_dto_model.dart';
import 'package:drift/drift.dart';

part 'user_dao.g.dart';

@DriftAccessor(
  tables: [User, Address, Company, Post],
  include: {
    '../../../../common/database/table/user_table.drift',
    '../../../../common/database/table/post_table.drift',
  },
)
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(super.attachedDatabase);

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

  Future<bool> existUserPosts(int userId) async {
    final query = selectOnly(post)
      ..addColumns([post.userId])
      ..where(post.userId.equals(userId))
      ..limit(1);

    final result = await query.get();
    return result.isNotEmpty;
  }

  Future<UserWithPostsReadModel> fetchUserWithPosts(int userId) async {
    final query = select(post).join([
      innerJoin(user, user.id.equalsExp(post.userId)),
    ])
      ..where(post.userId.equals(userId));

    final result = await query.get();

    if (result.isEmpty) {
      throw Exception();
    }

    final posts = result.map<PostReadModel>((p0) {
      final singlePost = p0.readTable(post);
      return PostReadModel(
        id: singlePost.id,
        title: singlePost.title,
        body: singlePost.body,
      );
    }).toList();

    final singleUser = result.first.readTable(user);

    return UserWithPostsReadModel(
      id: singleUser.id,
      name: singleUser.name,
      phone: singleUser.phone,
      email: singleUser.email,
      posts: posts,
    );
  }
}
