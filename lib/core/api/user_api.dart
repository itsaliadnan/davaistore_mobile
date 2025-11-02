import 'package:davaistore_mobile/core/api/dio_client.dart';
import 'package:davaistore_mobile/core/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'user_api.g.dart';

final userApiProvider = Provider<UserApi>((ref) {
  return UserApi(ref.read(dioProvider));
});

@RestApi()
abstract class UserApi {
  factory UserApi(Dio dio, {String? baseUrl}) = _UserApi;
  @GET('/api/v1/users')
  Future<List<User>> getUsers();
  @POST('/api/v1/users')
  Future<User> createUser(@Body() Map<String, dynamic> body);
}
