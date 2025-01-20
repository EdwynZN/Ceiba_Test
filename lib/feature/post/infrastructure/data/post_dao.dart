import 'package:ceiba_test/common/database/drift_database.dart';
import 'package:drift/drift.dart';

part 'post_dao.g.dart';

@DriftAccessor(
  include: {'../../../../common/database/table/post_table.drift'},
)
class PostDao extends DatabaseAccessor<AppDatabase> with _$PostDaoMixin {
  PostDao(super.db);

  Future<void> insertAll({required List<PostTable> posts}) async {
    await batch((batch) {
      batch.insertAll(post, posts, mode: InsertMode.insertOrReplace);
    });
  }
}
