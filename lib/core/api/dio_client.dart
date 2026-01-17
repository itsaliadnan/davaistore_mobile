import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://fakestoreapi.com/',
      // headers: {'Content-Type': 'application/json'},
    ),
  )..interceptors.add(AwesomeDioInterceptor());

  return dio;
});
