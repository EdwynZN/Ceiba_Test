import 'package:ceiba_test/common/http/dio_adapter.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/model/user_dto_model.dart';
import 'package:ceiba_test/feature/user/infrastructure/data/model/user_post_dto_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_api.g.dart';

@riverpod
UserApi userApi(Ref ref) {
  final dio = ref.watch(dioProvider);
  return UserApi(dio);
}

@RestApi()
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @GET('users')
  Future<List<UserDTOModel>> getUsers({
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET('posts')
  Future<List<UserPostDTOModel>> getPostsByUser({
    @Query('userId') required int userId,
    @CancelRequest() CancelToken? cancelToken,
  });
}
