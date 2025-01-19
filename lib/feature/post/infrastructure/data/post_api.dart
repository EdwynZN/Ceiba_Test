import 'package:ceiba_test/common/http/dio_adapter.dart';
import 'package:ceiba_test/feature/post/infrastructure/data/model/post_dto_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_api.g.dart';

@riverpod
PostApi postApi(Ref ref) {
  final dio = ref.watch(dioProvider);
  return PostApi(dio);
}

@RestApi()
abstract class PostApi {
  factory PostApi(Dio dio, {String baseUrl}) = _PostApi;

  @GET('posts')
  Future<List<PostDTOModel>> getPosts({
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET('posts')
  Future<List<PostDTOModel>> getPostsByUser({
    @Query('userId') required int userId,
    @CancelRequest() CancelToken? cancelToken,
  });

}
