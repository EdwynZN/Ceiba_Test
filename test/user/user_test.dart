import 'package:ceiba_test/common/database/drift_database.dart';
import 'package:ceiba_test/feature/user/domain/repository/user_read_repository.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/user_api.dart';
import 'package:ceiba_test/feature/user/infrastructure/user_read_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'user_read_model.dart';

void main() {
  group('UserReadModel Repository test', () {
    late AppDatabase database;
    late Dio dio;
    late DioAdapter adapter;

    setUp(() {
      database = AppDatabase.testing();
      dio = Dio(
        BaseOptions(
          baseUrl: 'https://jsonplaceholder.typicode.com/',
          contentType: Headers.jsonContentType,
        ),
      );
      adapter = DioAdapter(
        dio: dio,
        matcher: const UrlRequestMatcher(),
      );
    });

    tearDown(() async {
      adapter.close();
      await database.close();
    });

    test('Empty local db', () async {
      adapter.onGet(
        'users',
        (server) => server.throws(
          500,
          DioException.connectionTimeout(
            timeout: const Duration(milliseconds: 500),
            requestOptions: RequestOptions(),
          ),
          delay: const Duration(milliseconds: 500),
        ),
      );

      final api = UserApi(dio);
      final UserReadRepository repository = UserReadRepositoryImpl(
        api,
        database.userDao,
        database.postDao,
      );

      /// simulate an HTTP error
      await expectLater(
        () => repository.getUsers(name: 'Javascript'),
        throwsA(isA<DioException>()),
      );

      adapter
        ..reset()
        ..onGet(
          'users',
          (server) => server.reply(
            200,
            usersJsonResponse,
            delay: const Duration(milliseconds: 200),
          ),
        );

      var users = await repository.getUsers();
      expect(users, hasLength(3));

      /// Now we throw an error from HTTP and expect the DB to retrieve
      /// the information

      adapter
        ..reset()
        ..onGet(
          'users',
          (server) => server.throws(
            500,
            DioException.connectionTimeout(
              timeout: const Duration(milliseconds: 500),
              requestOptions: RequestOptions(),
            ),
            delay: const Duration(milliseconds: 500),
          ),
        );

      users = await repository.getUsers();
      expect(users, hasLength(3));

      /// filter by name
      users = await repository.getUsers(name: 'Graham');
      expect(users, hasLength(1));

      users = await repository.getUsers(name: 'Javascript');
      expect(users, isEmpty);
    });

    test('AlreadyFilled local db', () async {
      adapter
        ..reset()
        ..onGet(
          'users',
          (server) => server.throws(
            500,
            DioException.connectionTimeout(
              timeout: const Duration(milliseconds: 500),
              requestOptions: RequestOptions(),
            ),
            delay: const Duration(milliseconds: 500),
          ),
        );

      await database.userDao.insertAll(
        users: List.generate(3, (i) {
          return UserTable(
            id: i,
            name: usersJsonResponse[i]['name']! as String,
            username: 'user-$i',
            email: 'email$i@gmail.com',
            phone: '55-34432$i-43',
            website: 'www.google$i.com',
          );
        }),
        addresses: List.generate(3, (i) {
          return AddressCompanion.insert(
            userId: i,
            city: 'city',
            lat: 0.34424,
            long: -43.321,
            street: 'street',
            suite: 'suite',
            zipCode: '431234',
          );
        }),
        companies: List.generate(3, (i) {
          return CompanyCompanion.insert(
            userId: i,
            name: 'my company',
            bs: 'bs',
            catchPhrase: 'catch',
          );
        }),
      );

      final api = UserApi(dio);
      final UserReadRepository repository = UserReadRepositoryImpl(
        api,
        database.userDao,
        database.postDao,
      );

      var users = await repository.getUsers();
      expect(users, hasLength(3));

      /// filter by name
      users = await repository.getUsers(name: 'Graham');
      expect(users, hasLength(1));

      users = await repository.getUsers(name: 'Javascript');
      expect(users, isEmpty);
    });
  });
}
