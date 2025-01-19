import 'dart:io';

import 'package:ceiba_test/feature/user/infrastructure/data/user_dao.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drift_database.g.dart';

@riverpod
AppDatabase appDatabase(Ref ref) => AppDatabase();

@DriftDatabase(
  daos: [UserDao],
  include: {'table/user_table.drift'},
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openExecuter(AppDatabase._databaseName));

  static const String _databaseName = 'ceiba.sqlite';

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy();
}

LazyDatabase _openExecuter(String databaseName) {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, databaseName));

    return NativeDatabase(file);
  });
}
