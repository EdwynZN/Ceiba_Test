import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_adapter.g.dart';

@riverpod
Dio dio(Ref ref) {
  final options = BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 5),
    listFormat: ListFormat.csv,
    followRedirects: true,
    headers: <String, dynamic>{'X-Requested-With': 'XMLHttpRequest'},
    contentType: Headers.jsonContentType,
  );
  return Dio(options);
}
